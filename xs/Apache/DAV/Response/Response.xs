
/*
 * *********** WARNING **************
 * This file generated by Apache::DAV::WrapXS/0.01
 * Any changes made here will be lost
 * ***********************************
 * 1. /opt/perl5.6.1/lib/site_perl/5.6.1/ExtUtils/XSBuilder/WrapXS.pm:38
 * 2. /opt/perl5.6.1/lib/site_perl/5.6.1/ExtUtils/XSBuilder/WrapXS.pm:1898
 * 3. xsbuilder/xs_generate.pl:6
 */


#include "mod_dav.h"

#include "EXTERN.h"

#include "perl.h"

#include "XSUB.h"

#include "moddav_xs_sv_convert.h"

#include "moddav_xs_typedefs.h"



void Apache__DAV__Response_new_init (pTHX_ Apache__DAV__Response  obj, SV * item, int overwrite) {

    SV * * tmpsv ;

    if (SvTYPE(item) == SVt_PVMG) 
        memcpy (obj, (void *)SvIVX(item), sizeof (*obj)) ;
    else if (SvTYPE(item) == SVt_PVHV) {
        if ((tmpsv = hv_fetch((HV *)item, "href", sizeof("href") - 1, 0)) || overwrite) {
            const char * tmpobj = ((const char *)davxs_sv2_PV((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> href = (const char *)strdup(tmpobj);
            else
                obj -> href = NULL ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "desc", sizeof("desc") - 1, 0)) || overwrite) {
            const char * tmpobj = ((const char *)davxs_sv2_PV((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> desc = (const char *)strdup(tmpobj);
            else
                obj -> desc = NULL ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "status", sizeof("status") - 1, 0)) || overwrite) {
            obj -> status = (int)davxs_sv2_IV((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)) ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "next", sizeof("next") - 1, 0)) || overwrite) {
            obj -> next = (struct dav_response *)davxs_sv2_Apache__DAV__Response((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)) ;
        }
   ; }

    else
        croak ("initializer for Apache::DAV::Response::new is not a hash or object reference") ;

} ;


MODULE = Apache::DAV::Response    PACKAGE = Apache::DAV::Response 

const char *
href(obj, val=NULL)
    Apache::DAV::Response obj
    const char * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (const char *)  obj->href;

    if (items > 1) {
        obj->href = (const char *)strdup(val);
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::Response    PACKAGE = Apache::DAV::Response 

const char *
desc(obj, val=NULL)
    Apache::DAV::Response obj
    const char * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (const char *)  obj->desc;

    if (items > 1) {
        obj->desc = (const char *)strdup(val);
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::Response    PACKAGE = Apache::DAV::Response 

Apache::DAV::PropsResult
propresult(obj, val=NULL)
    Apache::DAV::Response obj
    Apache::DAV::PropsResult val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (Apache__DAV__PropsResult) & obj->propresult;
    if (items > 1) {
         croak ("propresult is read only") ;
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::Response    PACKAGE = Apache::DAV::Response 

int
status(obj, val=0)
    Apache::DAV::Response obj
    int val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (int)  obj->status;

    if (items > 1) {
        obj->status = (int) val;
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::Response    PACKAGE = Apache::DAV::Response 

Apache::DAV::Response
next(obj, val=NULL)
    Apache::DAV::Response obj
    Apache::DAV::Response val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (Apache__DAV__Response)  obj->next;

    if (items > 1) {
        obj->next = (Apache__DAV__Response) val;
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::Response    PACKAGE = Apache::DAV::Response 



SV *
new (class,initializer=NULL)
    char * class
    SV * initializer 
PREINIT:
    SV * svobj ;
    Apache__DAV__Response  cobj ;
    SV * tmpsv ;
CODE:
    davxs_Apache__DAV__Response_create_obj(cobj,svobj,RETVAL,malloc(sizeof(*cobj))) ;

    if (initializer) {
        if (!SvROK(initializer) || !(tmpsv = SvRV(initializer))) 
            croak ("initializer for Apache::DAV::Response::new is not a reference") ;

        if (SvTYPE(tmpsv) == SVt_PVHV || SvTYPE(tmpsv) == SVt_PVMG)  
            Apache__DAV__Response_new_init (aTHX_ cobj, tmpsv, 0) ;
        else if (SvTYPE(tmpsv) == SVt_PVAV) {
            int i ;
            SvGROW(svobj, sizeof (*cobj) * av_len((AV *)tmpsv)) ;     
            for (i = 0; i <= av_len((AV *)tmpsv); i++) {
                SV * * itemrv = av_fetch((AV *)tmpsv, i, 0) ;
                SV * item ;
                if (!itemrv || !*itemrv || !SvROK(*itemrv) || !(item = SvRV(*itemrv))) 
                    croak ("array element of initializer for Apache::DAV::Response::new is not a reference") ;
                Apache__DAV__Response_new_init (aTHX_ &cobj[i], item, 1) ;
            }
        }
        else {
             croak ("initializer for Apache::DAV::Response::new is not a hash/array/object reference") ;
        }
    }
OUTPUT:
    RETVAL 

PROTOTYPES: disabled

BOOT:
    items = items; /* -Wall */
