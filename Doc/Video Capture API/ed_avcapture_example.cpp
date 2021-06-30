/*
    Example ED AVCapture module
    Copyright 2010 Eagle Dynamics. All rights reserved.
    Written by Dmitry S. Baikov <dsb@eagle.ru>

    Redistribution and use in source and binary forms, with or without modification, are
    permitted provided that the following conditions are met:

       1. Redistributions of source code must retain the above copyright notice, this list of
          conditions and the following disclaimer.

       2. Redistributions in binary form must reproduce the above copyright notice, this list
          of conditions and the following disclaimer in the documentation and/or other materials
          provided with the distribution.

    THIS SOFTWARE IS PROVIDED BY EAGLE DYNAMICS ``AS IS'' AND ANY EXPRESS OR IMPLIED
    WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
    FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL EAGLE DYNAMICS OR
    CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
    ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
    NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
    ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

    The views and conclusions contained in the software and documentation are those of the
    authors and should not be interpreted as representing official policies, either expressed
    or implied, of Eagle Dynamics.
*/

// the trick to avoid casts
#define ED_AVCAPTURE_PRIVATE
typedef struct test_data ed_avcapture_t;
#include "ed_avcapture.h"

// this is your private area
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>

struct test_data {
    // here you will keep your private data
    FILE *out;
    unsigned video_frames;
    unsigned audio_frames;
};

static
ed_avcapture_t* test_start(const char *output, const struct ed_avcapture_params *params, const char *format)
{
    char outname[MAX_PATH];
    wchar_t woutname[MAX_PATH];

    _snprintf(outname, sizeof(outname), "%s.txt", output);
    if (!MultiByteToWideChar(CP_UTF8, 0, outname, -1, woutname, sizeof(woutname)/sizeof(woutname[0])))
        return 0;

    struct test_data *self = (struct test_data*) calloc(1, sizeof(*self));
    if (!self)
        return 0;

    self->out = _wfopen(woutname, L"wb");
    if (!self->out)
    {
        free (self);
        return 0;
    }
    self->video_frames = 0;
    self->audio_frames = 0;

    fprintf(self->out, "Started with:\n");
    fprintf(self->out, "output = \"%s\"\n", output);
    fprintf(self->out, "width = %d, height = %d, framerate = %d, quality = %f\n",
        params->width, params->height, params->framerate, params->quality);
    fprintf(self->out, "samplerate = %d, nchannels = %d\n",
        params->samplerate, params->nchannels);
    fprintf(self->out, "format = \"%s\".\n", format);

    MessageBoxA(NULL, "Started!", "Test Encoder", MB_OK);

    return self;
}

int test_video(ed_avcapture_t *self, const unsigned char *bgra_dib, unsigned int stride)
{
    self->video_frames += 1;
    fprintf(self->out, "video: stride = %d, frames done: %d\n", stride, self->video_frames);
    return 1;
}

int test_audio(ed_avcapture_t *self, const float *buffer, unsigned nframes)
{
    self->audio_frames += nframes;
    fprintf(self->out, "audio: nframes = %d, frames done: %d\n", nframes, self->audio_frames);
    return 1;
}

static
void test_stop(ed_avcapture_t *self)
{
    if (self)
    {
        fprintf(self->out, "Stopped.\n");
        fclose(self->out);
        free(self);
    }
}

// public part:
static struct ed_avcapture_info test_info = {
    "Test encoder",
    test_start,
    test_video,
    test_audio,
    test_stop
};

extern "C"
__declspec(dllexport)
struct ed_avcapture_info* ed_test_avcapture()
{
    return &test_info;
}
