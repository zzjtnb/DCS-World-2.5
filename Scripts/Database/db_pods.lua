db.Pods = { Pod = {} };
Pods 	= db.Pods.Pod

function register_targeting_pod(type_index, displayName, params)
	local res 		  		= params or {};
	res.Name 		  		= type_index;
	res.DisplayName   		= displayName;	
	db.Pods.Pod[type_index] = res
	return res;
end

register_targeting_pod(PAVETACK, _("PAVETACK AN/AVQ-26 FLIR/LDT"), 
{
	OPTIC = "PAVETACK AN/AVQ-26 FLIR/LDT"
})
	
register_targeting_pod(LANTIRN, _("LANTIRN F-14"), 
{
	OPTIC = "LANTIRN AAQ-14 FLIR"
})
	
register_targeting_pod(LANTIRN, _("LANTIRN F-16"), 
{
	OPTIC = "LANTIRN AAQ-14 FLIR"
})
	
register_targeting_pod(LANTIRN, _("LANTIRN F-18"), 
{
	OPTIC = "LANTIRN AAQ-14 FLIR"
})
	
register_targeting_pod(AN_AAS_38_FLIR, _("AN/AAS-38 FLIR/LDT"), 
{
	OPTIC = "AN/AAS-38 FLIR/LDT"
})
	
register_targeting_pod(AN_AAQ_28_LITENING, _("Litening AN/AAQ-28 FLIR/LDT"), 
{
	OPTIC = {"Litening AN/AAQ-28 FLIR", "Litening AN/AAQ-28 CCD TV"}
})
	
register_targeting_pod(AN_ASQ_173_LST_CAM, _("AN/ASQ-173 LDT/CAM"), 
{

})
	
register_targeting_pod(KINGAL, _("Merkury LLTV"), 
{
	OPTIC = "Merkury LLTV"
})
	
register_targeting_pod(Kopyo, _("Kopyo radar"), 
{
	RADAR = "Kopyo"
})
	
register_targeting_pod(FANTASM, _("Fantasmagoria"), 
{
	RWR = "Abstract RWR"
})

