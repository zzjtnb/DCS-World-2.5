/*
    ED AudioVideoCapture library
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
#ifndef _ed_avcapture_h_
#define _ed_avcapture_h_

#ifdef __cplusplus
extern "C" {
#endif


/**
 * Encoding parameters.
 */
struct ed_avcapture_params {
    /**
     * Video width in pixels.
     */
    int width;

    /**
     * Video height in pixels.
     * Negative value means bottom-to-top image.
     * In DCS it is always negative.
     */
    int height;

    /**
     * Video frames per second.
     */
    int framerate;

    /**
     * Video quality [0, 1.0], where 1.0 means best.
     */
    float quality;

    /**
     * Audio sample rate in Hz.
     */
    int samplerate;

    /**
     * Number of audio channels (2 for stereo).
     */
    int nchannels;
};

#ifndef ED_AVCAPTURE_PRIVATE
typedef struct ed_avcapture_private ed_avcapture_t;
#endif


/**
 * Encoder description.
 */
struct ed_avcapture_info {
    /**
     * Encoder name.
     */
    const char *name;

    /**
     * Init encoder.
     * @param file_prefix output filename (utf-8) with or w/o extension depending on record_avi.lua setting
     * @param params encoding settings
     * @param format custom format string from record_avi.lua
     * @return pointer to private data or NULL on error
     */
    ed_avcapture_t* (*start)(const char *file_prefix, const struct ed_avcapture_params *params, const char *format);

    /**
     * Encode video frame.
     * @param self private encoder data
     * @param frame pointer to BGR DIB data
     * @param stride length of pixel row in bytes (usually 3*width, constant during encoding)
     * @retval 1 ok
     * @retval 0 unrecoverable error
     */
    int (*video)(ed_avcapture_t *self, const unsigned char *frame, unsigned stride);

    /**
     * Encode audio frames.
     * @param self private encoder data
     * @param buffer pointer to audio samples (interleaved).
     * @param nframes number of audio frames in the buffer (a frame contains 1 sample for every channel).
     * @retval 1 ok
     * @retval 0 unrecoverable error
     *
     * @note: Audio samples values are in range [-1.0, 1.0]
     */
    int (*audio)(ed_avcapture_t *self, const float *buffer, unsigned nframes);

    /**
     * Finish encoding and release private data.
     * @param self private encoder data
     */
    void (*finish)(ed_avcapture_t *self);
};


/**
 * Type of function to export from encoder's DLL.
 * The actual function name is a user-defined option.
 */
typedef struct ed_avcapture_info* (*ed_avcapture_get)();

#ifdef __cplusplus
} // extern "C"
#endif

#endif /* _ed_avcapture_h_ */
