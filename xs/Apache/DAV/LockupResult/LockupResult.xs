
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



void Apache__DAV__LockupResult_new_init (pTHX_ Apache__DAV__LockupResult  obj, SV * item, int overwrite) {

    SV * * tmpsv ;

    if (SvTYPE(item) == SVt_PVMG) 
        memcpy (obj, (void *)SvIVX(item), sizeof (*obj)) ;
    else if (SvTYPE(item) == SVt_PVHV) {
        if ((tmpsv = hv_fetch((HV *)item, "rnew", sizeof("rnew") - 1, 0)) || overwrite) {
            obj -> rnew = (request_rec *)davxs_sv2_Apache((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)) ;
        }
   ; }

    else
        croak ("initializer for Apache::DAV::LockupResult::new is not a hash or object reference") ;

} ;


MODULE = Apache::DAV::LockupResult    PACKAGE = Apache::DAV::LockupResult 

Apache
rnew(obj, val=NULL)
    Apache::DAV::LockupResult obj
    Apache val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (Apache)  obj->rnew;

    if (items > 1) {
        obj->rnew = (Apache) val;
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::LockupResult    PACKAGE = Apache::DAV::LockupResult 

Apache::DAV::Error
err(obj, val=NULL)
    Apache::DAV::LockupResult obj
    Apache::DAV::Error val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (Apache__DAV__Error) & obj->err;
    if (items > 1) {
         croak ("err is read only") ;
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::LockupResult    PACKAGE = Apache::DAV::LockupResult 



SV *
new (class,initializer=NULL)
    char * class
    SV * initializer 
PREINIT:
    SV * svobj ;
    Apache__DAV__LockupResult  cobj ;
    SV * tmpsv ;
CODE:
    davxs_Apache__DAV__LockupResult_create_obj(cobj,svobj,RETVAL,malloc(sizeof(*cobj))) ;

    if (initializer) {
        if (!SvROK(initializer) || !(tmpsv = SvRV(initializer))) 
            croak ("initializer for Apache::DAV::LockupResult::new is not a reference") ;

        if (SvTYPE(tmpsv) == SVt_PVHV || SvTYPE(tmpsv) == SVt_PVMG)  
            Apache__DAV__LockupResult_new_init (aTHX_ cobj, tmpsv, 0) ;
        else if (SvTYPE(tmpsv) == SVt_PVAV) {
            int i ;
            SvGROW(svobj, sizeof (*cobj) * av_len((AV *)tmpsv)) ;     
            for (i = 0; i <= av_len((AV *)tmpsv); i++) {
                SV * * itemrv = av_fetch((AV *)tmpsv, i, 0) ;
                SV * item ;
                if (!itemrv || !*itemrv || !SvROK(*itemrv) || !(item = SvRV(*itemrv))) 
                    croak ("array element of initializer for Apache::DAV::LockupResult::new is not a reference") ;
                Apache__DAV__LockupResult_new_init (aTHX_ &cobj[i], item, 1) ;
            }
        }
        else {
             croak ("initializer for Apache::DAV::LockupResult::new is not a hash/array/object reference") ;
        }
    }
OUTPUT:
    RETVAL 

PROTOTYPES: disabled

BOOT:
    items = items; /* -Wall */

