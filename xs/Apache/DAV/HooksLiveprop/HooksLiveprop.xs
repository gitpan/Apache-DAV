
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

static SV * davxs_Apache__DAV__HooksLiveprop_obj[4] ;



void Apache__DAV__HooksLiveprop_new_init (pTHX_ Apache__DAV__HooksLiveprop  obj, SV * item, int overwrite) {

    SV * * tmpsv ;

    if (SvTYPE(item) == SVt_PVMG) 
        memcpy (obj, (void *)SvIVX(item), sizeof (*obj)) ;
    else if (SvTYPE(item) == SVt_PVHV) {
        if ((tmpsv = hv_fetch((HV *)item, "propset_uri", sizeof("propset_uri") - 1, 0)) || overwrite) {
            const char * tmpobj = ((const char *)davxs_sv2_PV((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> propset_uri = (const char *)strdup(tmpobj);
            else
                obj -> propset_uri = NULL ;
        }
   ; }

    else
        croak ("initializer for Apache::DAV::HooksLiveprop::new is not a hash or object reference") ;

} ;



/* --- Apache::DAV::HooksLiveprop -> patch_rollback --- */



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback (SV * __cbdest,dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)
    {
    Apache__DAV__Error __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__Resource_2obj(resource)) ;
    PUSHs(davxs_IV_2obj(operation)) ;
    PUSHs(davxs_PTR_2obj(context)) ;
    PUSHs(davxs_Apache__DAV__LivepropRollback_2obj(rollback_ctx)) ;

    PUTBACK ;
    __cnt = perl_call_method("patch_rollback", G_SCALAR) ;


    if (__cnt != 1)
        croak ("davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback expected 1 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (Apache__DAV__Error)davxs_sv2_Apache__DAV__Error(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_obj0 (dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback (davxs_Apache__DAV__HooksLiveprop_obj[0],resource,operation,context,rollback_ctx) ;
    }



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_obj1 (dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback (davxs_Apache__DAV__HooksLiveprop_obj[1],resource,operation,context,rollback_ctx) ;
    }



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_obj2 (dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback (davxs_Apache__DAV__HooksLiveprop_obj[2],resource,operation,context,rollback_ctx) ;
    }



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_obj3 (dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback (davxs_Apache__DAV__HooksLiveprop_obj[3],resource,operation,context,rollback_ctx) ;
    }

typedef Apache__DAV__Error (*tdavxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_func)(dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)  ;
static tdavxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_func davxs_davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_func [4] = {
    davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_obj0,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_obj1,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_obj2,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_obj3
    } ;



/* --- Apache::DAV::HooksLiveprop -> patch_commit --- */



static void davxs_cb_Apache__DAV__HooksLiveprop__patch_commit (SV * __cbdest,dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)
    {

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__Resource_2obj(resource)) ;
    PUSHs(davxs_IV_2obj(operation)) ;
    PUSHs(davxs_PTR_2obj(context)) ;
    PUSHs(davxs_Apache__DAV__LivepropRollback_2obj(rollback_ctx)) ;

    PUTBACK ;
    __cnt = perl_call_method("patch_commit", G_VOID) ;


    if (__cnt != 0)
        croak ("davxs_cb_Apache__DAV__HooksLiveprop__patch_commit expected 0 return values") ;

    SPAGAIN ;

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   

    }
   


static void davxs_cb_Apache__DAV__HooksLiveprop__patch_commit_obj0 (dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)
    {
     davxs_cb_Apache__DAV__HooksLiveprop__patch_commit (davxs_Apache__DAV__HooksLiveprop_obj[0],resource,operation,context,rollback_ctx) ;
    }



static void davxs_cb_Apache__DAV__HooksLiveprop__patch_commit_obj1 (dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)
    {
     davxs_cb_Apache__DAV__HooksLiveprop__patch_commit (davxs_Apache__DAV__HooksLiveprop_obj[1],resource,operation,context,rollback_ctx) ;
    }



static void davxs_cb_Apache__DAV__HooksLiveprop__patch_commit_obj2 (dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)
    {
     davxs_cb_Apache__DAV__HooksLiveprop__patch_commit (davxs_Apache__DAV__HooksLiveprop_obj[2],resource,operation,context,rollback_ctx) ;
    }



static void davxs_cb_Apache__DAV__HooksLiveprop__patch_commit_obj3 (dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)
    {
     davxs_cb_Apache__DAV__HooksLiveprop__patch_commit (davxs_Apache__DAV__HooksLiveprop_obj[3],resource,operation,context,rollback_ctx) ;
    }

typedef void (*tdavxs_cb_Apache__DAV__HooksLiveprop__patch_commit_func)(dav_resource * resource,int operation,void * context,dav_liveprop_rollback * rollback_ctx)  ;
static tdavxs_cb_Apache__DAV__HooksLiveprop__patch_commit_func davxs_davxs_cb_Apache__DAV__HooksLiveprop__patch_commit_func [4] = {
    davxs_cb_Apache__DAV__HooksLiveprop__patch_commit_obj0,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_commit_obj1,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_commit_obj2,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_commit_obj3
    } ;



/* --- Apache::DAV::HooksLiveprop -> patch_exec --- */



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_exec (SV * __cbdest,dav_resource * resource,const dav_xml_elem * elem,int operation,void * context,dav_liveprop_rollback * * rollback_ctx)
    {
    Apache__DAV__Error __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__Resource_2obj(resource)) ;
    PUSHs(davxs_Apache__DAV__XMLElem_2obj(elem)) ;
    PUSHs(davxs_IV_2obj(operation)) ;
    PUSHs(davxs_PTR_2obj(context)) ;

    PUTBACK ;
    __cnt = perl_call_method("patch_exec", G_ARRAY) ;


    if (__cnt != 2)
        croak ("davxs_cb_Apache__DAV__HooksLiveprop__patch_exec expected 2 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (Apache__DAV__Error)davxs_sv2_Apache__DAV__Error(__retsv);
    __retsv = POPs;
    *rollback_ctx = (dav_liveprop_rollback *)davxs_sv2_Apache__DAV__LivepropRollback(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_exec_obj0 (dav_resource * resource,const dav_xml_elem * elem,int operation,void * context,dav_liveprop_rollback * * rollback_ctx)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_exec (davxs_Apache__DAV__HooksLiveprop_obj[0],resource,elem,operation,context,rollback_ctx) ;
    }



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_exec_obj1 (dav_resource * resource,const dav_xml_elem * elem,int operation,void * context,dav_liveprop_rollback * * rollback_ctx)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_exec (davxs_Apache__DAV__HooksLiveprop_obj[1],resource,elem,operation,context,rollback_ctx) ;
    }



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_exec_obj2 (dav_resource * resource,const dav_xml_elem * elem,int operation,void * context,dav_liveprop_rollback * * rollback_ctx)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_exec (davxs_Apache__DAV__HooksLiveprop_obj[2],resource,elem,operation,context,rollback_ctx) ;
    }



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_exec_obj3 (dav_resource * resource,const dav_xml_elem * elem,int operation,void * context,dav_liveprop_rollback * * rollback_ctx)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_exec (davxs_Apache__DAV__HooksLiveprop_obj[3],resource,elem,operation,context,rollback_ctx) ;
    }

typedef Apache__DAV__Error (*tdavxs_cb_Apache__DAV__HooksLiveprop__patch_exec_func)(dav_resource * resource,const dav_xml_elem * elem,int operation,void * context,dav_liveprop_rollback * * rollback_ctx)  ;
static tdavxs_cb_Apache__DAV__HooksLiveprop__patch_exec_func davxs_davxs_cb_Apache__DAV__HooksLiveprop__patch_exec_func [4] = {
    davxs_cb_Apache__DAV__HooksLiveprop__patch_exec_obj0,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_exec_obj1,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_exec_obj2,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_exec_obj3
    } ;



/* --- Apache::DAV::HooksLiveprop -> patch_validate --- */



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_validate (SV * __cbdest,const dav_resource * resource,const dav_xml_elem * elem,int operation,void * * context,int * defer_to_dead)
    {
    Apache__DAV__Error __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__Resource_2obj(resource)) ;
    PUSHs(davxs_Apache__DAV__XMLElem_2obj(elem)) ;
    PUSHs(davxs_IV_2obj(operation)) ;

    PUTBACK ;
    __cnt = perl_call_method("patch_validate", G_ARRAY) ;


    if (__cnt != 3)
        croak ("davxs_cb_Apache__DAV__HooksLiveprop__patch_validate expected 3 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (Apache__DAV__Error)davxs_sv2_Apache__DAV__Error(__retsv);
    __retsv = POPs;
    *context = (void *)davxs_sv2_PTR(__retsv);
    __retsv = POPs;
    *defer_to_dead = (int)davxs_sv2_IV(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_validate_obj0 (const dav_resource * resource,const dav_xml_elem * elem,int operation,void * * context,int * defer_to_dead)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_validate (davxs_Apache__DAV__HooksLiveprop_obj[0],resource,elem,operation,context,defer_to_dead) ;
    }



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_validate_obj1 (const dav_resource * resource,const dav_xml_elem * elem,int operation,void * * context,int * defer_to_dead)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_validate (davxs_Apache__DAV__HooksLiveprop_obj[1],resource,elem,operation,context,defer_to_dead) ;
    }



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_validate_obj2 (const dav_resource * resource,const dav_xml_elem * elem,int operation,void * * context,int * defer_to_dead)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_validate (davxs_Apache__DAV__HooksLiveprop_obj[2],resource,elem,operation,context,defer_to_dead) ;
    }



static Apache__DAV__Error davxs_cb_Apache__DAV__HooksLiveprop__patch_validate_obj3 (const dav_resource * resource,const dav_xml_elem * elem,int operation,void * * context,int * defer_to_dead)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__patch_validate (davxs_Apache__DAV__HooksLiveprop_obj[3],resource,elem,operation,context,defer_to_dead) ;
    }

typedef Apache__DAV__Error (*tdavxs_cb_Apache__DAV__HooksLiveprop__patch_validate_func)(const dav_resource * resource,const dav_xml_elem * elem,int operation,void * * context,int * defer_to_dead)  ;
static tdavxs_cb_Apache__DAV__HooksLiveprop__patch_validate_func davxs_davxs_cb_Apache__DAV__HooksLiveprop__patch_validate_func [4] = {
    davxs_cb_Apache__DAV__HooksLiveprop__patch_validate_obj0,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_validate_obj1,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_validate_obj2,
    davxs_cb_Apache__DAV__HooksLiveprop__patch_validate_obj3
    } ;



/* --- Apache::DAV::HooksLiveprop -> is_writeable --- */



static dav_prop_rw davxs_cb_Apache__DAV__HooksLiveprop__is_writeable (SV * __cbdest,const dav_resource * resource,int propid)
    {
    dav_prop_rw __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__Resource_2obj(resource)) ;
    PUSHs(davxs_IV_2obj(propid)) ;

    PUTBACK ;
    __cnt = perl_call_method("is_writeable", G_SCALAR) ;


    if (__cnt != 1)
        croak ("davxs_cb_Apache__DAV__HooksLiveprop__is_writeable expected 1 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (dav_prop_rw)davxs_sv2_IV(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static dav_prop_rw davxs_cb_Apache__DAV__HooksLiveprop__is_writeable_obj0 (const dav_resource * resource,int propid)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__is_writeable (davxs_Apache__DAV__HooksLiveprop_obj[0],resource,propid) ;
    }



static dav_prop_rw davxs_cb_Apache__DAV__HooksLiveprop__is_writeable_obj1 (const dav_resource * resource,int propid)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__is_writeable (davxs_Apache__DAV__HooksLiveprop_obj[1],resource,propid) ;
    }



static dav_prop_rw davxs_cb_Apache__DAV__HooksLiveprop__is_writeable_obj2 (const dav_resource * resource,int propid)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__is_writeable (davxs_Apache__DAV__HooksLiveprop_obj[2],resource,propid) ;
    }



static dav_prop_rw davxs_cb_Apache__DAV__HooksLiveprop__is_writeable_obj3 (const dav_resource * resource,int propid)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__is_writeable (davxs_Apache__DAV__HooksLiveprop_obj[3],resource,propid) ;
    }

typedef dav_prop_rw (*tdavxs_cb_Apache__DAV__HooksLiveprop__is_writeable_func)(const dav_resource * resource,int propid)  ;
static tdavxs_cb_Apache__DAV__HooksLiveprop__is_writeable_func davxs_davxs_cb_Apache__DAV__HooksLiveprop__is_writeable_func [4] = {
    davxs_cb_Apache__DAV__HooksLiveprop__is_writeable_obj0,
    davxs_cb_Apache__DAV__HooksLiveprop__is_writeable_obj1,
    davxs_cb_Apache__DAV__HooksLiveprop__is_writeable_obj2,
    davxs_cb_Apache__DAV__HooksLiveprop__is_writeable_obj3
    } ;



/* --- Apache::DAV::HooksLiveprop -> insert_all --- */



static void davxs_cb_Apache__DAV__HooksLiveprop__insert_all (SV * __cbdest,const dav_resource * resource,int insvalue,void * ns_map,dav_text_header * phdr)
    {

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__Resource_2obj(resource)) ;
    PUSHs(davxs_IV_2obj(insvalue)) ;
    PUSHs(davxs_PTR_2obj(ns_map)) ;
    PUSHs(davxs_Apache__DAV__TextHeader_2obj(phdr)) ;

    PUTBACK ;
    __cnt = perl_call_method("insert_all", G_VOID) ;


    if (__cnt != 0)
        croak ("davxs_cb_Apache__DAV__HooksLiveprop__insert_all expected 0 return values") ;

    SPAGAIN ;

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   

    }
   


static void davxs_cb_Apache__DAV__HooksLiveprop__insert_all_obj0 (const dav_resource * resource,int insvalue,void * ns_map,dav_text_header * phdr)
    {
     davxs_cb_Apache__DAV__HooksLiveprop__insert_all (davxs_Apache__DAV__HooksLiveprop_obj[0],resource,insvalue,ns_map,phdr) ;
    }



static void davxs_cb_Apache__DAV__HooksLiveprop__insert_all_obj1 (const dav_resource * resource,int insvalue,void * ns_map,dav_text_header * phdr)
    {
     davxs_cb_Apache__DAV__HooksLiveprop__insert_all (davxs_Apache__DAV__HooksLiveprop_obj[1],resource,insvalue,ns_map,phdr) ;
    }



static void davxs_cb_Apache__DAV__HooksLiveprop__insert_all_obj2 (const dav_resource * resource,int insvalue,void * ns_map,dav_text_header * phdr)
    {
     davxs_cb_Apache__DAV__HooksLiveprop__insert_all (davxs_Apache__DAV__HooksLiveprop_obj[2],resource,insvalue,ns_map,phdr) ;
    }



static void davxs_cb_Apache__DAV__HooksLiveprop__insert_all_obj3 (const dav_resource * resource,int insvalue,void * ns_map,dav_text_header * phdr)
    {
     davxs_cb_Apache__DAV__HooksLiveprop__insert_all (davxs_Apache__DAV__HooksLiveprop_obj[3],resource,insvalue,ns_map,phdr) ;
    }

typedef void (*tdavxs_cb_Apache__DAV__HooksLiveprop__insert_all_func)(const dav_resource * resource,int insvalue,void * ns_map,dav_text_header * phdr)  ;
static tdavxs_cb_Apache__DAV__HooksLiveprop__insert_all_func davxs_davxs_cb_Apache__DAV__HooksLiveprop__insert_all_func [4] = {
    davxs_cb_Apache__DAV__HooksLiveprop__insert_all_obj0,
    davxs_cb_Apache__DAV__HooksLiveprop__insert_all_obj1,
    davxs_cb_Apache__DAV__HooksLiveprop__insert_all_obj2,
    davxs_cb_Apache__DAV__HooksLiveprop__insert_all_obj3
    } ;



/* --- Apache::DAV::HooksLiveprop -> insert_prop --- */



static dav_prop_insert davxs_cb_Apache__DAV__HooksLiveprop__insert_prop (SV * __cbdest,const dav_resource * resource,int propid,int insvalue,void * ns_map,dav_text_header * phdr)
    {
    dav_prop_insert __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__Resource_2obj(resource)) ;
    PUSHs(davxs_IV_2obj(propid)) ;
    PUSHs(davxs_IV_2obj(insvalue)) ;
    PUSHs(davxs_PTR_2obj(ns_map)) ;
    PUSHs(davxs_Apache__DAV__TextHeader_2obj(phdr)) ;

    PUTBACK ;
    __cnt = perl_call_method("insert_prop", G_SCALAR) ;


    if (__cnt != 1)
        croak ("davxs_cb_Apache__DAV__HooksLiveprop__insert_prop expected 1 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (dav_prop_insert)davxs_sv2_IV(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static dav_prop_insert davxs_cb_Apache__DAV__HooksLiveprop__insert_prop_obj0 (const dav_resource * resource,int propid,int insvalue,void * ns_map,dav_text_header * phdr)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__insert_prop (davxs_Apache__DAV__HooksLiveprop_obj[0],resource,propid,insvalue,ns_map,phdr) ;
    }



static dav_prop_insert davxs_cb_Apache__DAV__HooksLiveprop__insert_prop_obj1 (const dav_resource * resource,int propid,int insvalue,void * ns_map,dav_text_header * phdr)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__insert_prop (davxs_Apache__DAV__HooksLiveprop_obj[1],resource,propid,insvalue,ns_map,phdr) ;
    }



static dav_prop_insert davxs_cb_Apache__DAV__HooksLiveprop__insert_prop_obj2 (const dav_resource * resource,int propid,int insvalue,void * ns_map,dav_text_header * phdr)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__insert_prop (davxs_Apache__DAV__HooksLiveprop_obj[2],resource,propid,insvalue,ns_map,phdr) ;
    }



static dav_prop_insert davxs_cb_Apache__DAV__HooksLiveprop__insert_prop_obj3 (const dav_resource * resource,int propid,int insvalue,void * ns_map,dav_text_header * phdr)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__insert_prop (davxs_Apache__DAV__HooksLiveprop_obj[3],resource,propid,insvalue,ns_map,phdr) ;
    }

typedef dav_prop_insert (*tdavxs_cb_Apache__DAV__HooksLiveprop__insert_prop_func)(const dav_resource * resource,int propid,int insvalue,void * ns_map,dav_text_header * phdr)  ;
static tdavxs_cb_Apache__DAV__HooksLiveprop__insert_prop_func davxs_davxs_cb_Apache__DAV__HooksLiveprop__insert_prop_func [4] = {
    davxs_cb_Apache__DAV__HooksLiveprop__insert_prop_obj0,
    davxs_cb_Apache__DAV__HooksLiveprop__insert_prop_obj1,
    davxs_cb_Apache__DAV__HooksLiveprop__insert_prop_obj2,
    davxs_cb_Apache__DAV__HooksLiveprop__insert_prop_obj3
    } ;



/* --- Apache::DAV::HooksLiveprop -> find_prop --- */



static int davxs_cb_Apache__DAV__HooksLiveprop__find_prop (SV * __cbdest,const char * ns_uri,const char * name)
    {
    int __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_PV_2obj(ns_uri)) ;
    PUSHs(davxs_PV_2obj(name)) ;

    PUTBACK ;
    __cnt = perl_call_method("find_prop", G_SCALAR) ;


    if (__cnt != 1)
        croak ("davxs_cb_Apache__DAV__HooksLiveprop__find_prop expected 1 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (int)davxs_sv2_IV(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static int davxs_cb_Apache__DAV__HooksLiveprop__find_prop_obj0 (const char * ns_uri,const char * name)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__find_prop (davxs_Apache__DAV__HooksLiveprop_obj[0],ns_uri,name) ;
    }



static int davxs_cb_Apache__DAV__HooksLiveprop__find_prop_obj1 (const char * ns_uri,const char * name)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__find_prop (davxs_Apache__DAV__HooksLiveprop_obj[1],ns_uri,name) ;
    }



static int davxs_cb_Apache__DAV__HooksLiveprop__find_prop_obj2 (const char * ns_uri,const char * name)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__find_prop (davxs_Apache__DAV__HooksLiveprop_obj[2],ns_uri,name) ;
    }



static int davxs_cb_Apache__DAV__HooksLiveprop__find_prop_obj3 (const char * ns_uri,const char * name)
    {
    return davxs_cb_Apache__DAV__HooksLiveprop__find_prop (davxs_Apache__DAV__HooksLiveprop_obj[3],ns_uri,name) ;
    }

typedef int (*tdavxs_cb_Apache__DAV__HooksLiveprop__find_prop_func)(const char * ns_uri,const char * name)  ;
static tdavxs_cb_Apache__DAV__HooksLiveprop__find_prop_func davxs_davxs_cb_Apache__DAV__HooksLiveprop__find_prop_func [4] = {
    davxs_cb_Apache__DAV__HooksLiveprop__find_prop_obj0,
    davxs_cb_Apache__DAV__HooksLiveprop__find_prop_obj1,
    davxs_cb_Apache__DAV__HooksLiveprop__find_prop_obj2,
    davxs_cb_Apache__DAV__HooksLiveprop__find_prop_obj3
    } ;


MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 

const char *
propset_uri(obj, val=NULL)
    Apache::DAV::HooksLiveprop obj
    const char * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (const char *)  obj->propset_uri;

    if (items > 1) {
        obj->propset_uri = (const char *)strdup(val);
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 

int
find_prop(__self, ns_uri, name)
    Apache::DAV::HooksLiveprop __self
    const char * ns_uri
    const char * name
CODE:
    RETVAL = (*__self->find_prop)(ns_uri, name);
OUTPUT:
    RETVAL


MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 

dav_prop_insert
insert_prop(__self, resource, propid, insvalue, ns_map, phdr)
    Apache::DAV::HooksLiveprop __self
    Apache::DAV::Resource resource
    int propid
    int insvalue
    void * ns_map
    Apache::DAV::TextHeader phdr
CODE:
    RETVAL = (*__self->insert_prop)(resource, propid, insvalue, ns_map, phdr);
OUTPUT:
    RETVAL


MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 

void
insert_all(__self, resource, insvalue, ns_map, phdr)
    Apache::DAV::HooksLiveprop __self
    Apache::DAV::Resource resource
    int insvalue
    void * ns_map
    Apache::DAV::TextHeader phdr
CODE:
    (*__self->insert_all)(resource, insvalue, ns_map, phdr);


MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 

dav_prop_rw
is_writeable(__self, resource, propid)
    Apache::DAV::HooksLiveprop __self
    Apache::DAV::Resource resource
    int propid
CODE:
    RETVAL = (*__self->is_writeable)(resource, propid);
OUTPUT:
    RETVAL


MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 

Apache::DAV::Error
patch_validate(__self, resource, elem, operation)
    Apache::DAV::HooksLiveprop __self
    Apache::DAV::Resource resource
    Apache::DAV::XMLElem elem
    int operation
PREINIT:
    PTR context;
    IV defer_to_dead;
PPCODE:
    RETVAL = (*__self->patch_validate)(resource, elem, operation, &context, &defer_to_dead);
    XSprePUSH;
    EXTEND(SP, 3) ;
    PUSHs(davxs_Apache__DAV__Error_2obj(RETVAL)) ;
    PUSHs(davxs_PTR_2obj(context)) ;
    PUSHs(davxs_IV_2obj(defer_to_dead)) ;

MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 

Apache::DAV::Error
patch_exec(__self, resource, elem, operation, context)
    Apache::DAV::HooksLiveprop __self
    Apache::DAV::Resource resource
    Apache::DAV::XMLElem elem
    int operation
    void * context
PREINIT:
    Apache__DAV__LivepropRollback rollback_ctx;
PPCODE:
    RETVAL = (*__self->patch_exec)(resource, elem, operation, context, &rollback_ctx);
    XSprePUSH;
    EXTEND(SP, 2) ;
    PUSHs(davxs_Apache__DAV__Error_2obj(RETVAL)) ;
    PUSHs(davxs_Apache__DAV__LivepropRollback_2obj(rollback_ctx)) ;

MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 

void
patch_commit(__self, resource, operation, context, rollback_ctx)
    Apache::DAV::HooksLiveprop __self
    Apache::DAV::Resource resource
    int operation
    void * context
    Apache::DAV::LivepropRollback rollback_ctx
CODE:
    (*__self->patch_commit)(resource, operation, context, rollback_ctx);


MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 

Apache::DAV::Error
patch_rollback(__self, resource, operation, context, rollback_ctx)
    Apache::DAV::HooksLiveprop __self
    Apache::DAV::Resource resource
    int operation
    void * context
    Apache::DAV::LivepropRollback rollback_ctx
CODE:
    RETVAL = (*__self->patch_rollback)(resource, operation, context, rollback_ctx);
OUTPUT:
    RETVAL


MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 



SV *
new (class,initializer=NULL)
    char * class
    SV * initializer 
PREINIT:
    SV * svobj ;
    Apache__DAV__HooksLiveprop  cobj ;
    SV * tmpsv ;
CODE:
    davxs_Apache__DAV__HooksLiveprop_create_obj(cobj,svobj,RETVAL,malloc(sizeof(*cobj))) ;

    if (initializer) {
        if (!SvROK(initializer) || !(tmpsv = SvRV(initializer))) 
            croak ("initializer for Apache::DAV::HooksLiveprop::new is not a reference") ;

        if (SvTYPE(tmpsv) == SVt_PVHV || SvTYPE(tmpsv) == SVt_PVMG)  
            Apache__DAV__HooksLiveprop_new_init (aTHX_ cobj, tmpsv, 0) ;
        else if (SvTYPE(tmpsv) == SVt_PVAV) {
            int i ;
            SvGROW(svobj, sizeof (*cobj) * av_len((AV *)tmpsv)) ;     
            for (i = 0; i <= av_len((AV *)tmpsv); i++) {
                SV * * itemrv = av_fetch((AV *)tmpsv, i, 0) ;
                SV * item ;
                if (!itemrv || !*itemrv || !SvROK(*itemrv) || !(item = SvRV(*itemrv))) 
                    croak ("array element of initializer for Apache::DAV::HooksLiveprop::new is not a reference") ;
                Apache__DAV__HooksLiveprop_new_init (aTHX_ &cobj[i], item, 1) ;
            }
        }
        else {
             croak ("initializer for Apache::DAV::HooksLiveprop::new is not a hash/array/object reference") ;
        }
    }
OUTPUT:
    RETVAL 

MODULE = Apache::DAV::HooksLiveprop    PACKAGE = Apache::DAV::HooksLiveprop 



void
init_callbacks (obj)
    SV *  obj
PREINIT:
    int  n = -1 ;
    int  i ;
    Apache__DAV__HooksLiveprop cobj = (Apache__DAV__HooksLiveprop)davxs_sv2_Apache__DAV__HooksLiveprop(obj) ;
    SV * ref ;
    SV * perl_obj ;
CODE:

    perl_obj = SvRV(obj) ;
    ref = newRV_noinc(perl_obj) ;

    for (i=0;i < 4;i++)
        {
        if (davxs_Apache__DAV__HooksLiveprop_obj[i] == ref)
            {
            n = i ;
            break ;
            }
        }

    if (n < 0)
        for (i=0;i < 4;i++)
            {
            if (davxs_Apache__DAV__HooksLiveprop_obj[i] == NULL)
                {
                n = i ;
                break ;
                }
            }
        
    if (n < 0)
        croak ("Limit for concurrent object callbacks reached for Apache::DAV::HooksLiveprop. Limit is 4") ;

    davxs_Apache__DAV__HooksLiveprop_obj[n] = ref ;
    cobj -> find_prop = davxs_davxs_cb_Apache__DAV__HooksLiveprop__find_prop_func[n] ;
    cobj -> insert_prop = davxs_davxs_cb_Apache__DAV__HooksLiveprop__insert_prop_func[n] ;
    cobj -> insert_all = davxs_davxs_cb_Apache__DAV__HooksLiveprop__insert_all_func[n] ;
    cobj -> is_writeable = davxs_davxs_cb_Apache__DAV__HooksLiveprop__is_writeable_func[n] ;
    cobj -> patch_validate = davxs_davxs_cb_Apache__DAV__HooksLiveprop__patch_validate_func[n] ;
    cobj -> patch_exec = davxs_davxs_cb_Apache__DAV__HooksLiveprop__patch_exec_func[n] ;
    cobj -> patch_commit = davxs_davxs_cb_Apache__DAV__HooksLiveprop__patch_commit_func[n] ;
    cobj -> patch_rollback = davxs_davxs_cb_Apache__DAV__HooksLiveprop__patch_rollback_func[n] ;
    

PROTOTYPES: disabled

BOOT:
    items = items; /* -Wall */
