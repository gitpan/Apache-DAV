
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

static SV * davxs_Apache__DAV__DynModule_obj[4] ;



void Apache__DAV__DynModule_new_init (pTHX_ Apache__DAV__DynModule  obj, SV * item, int overwrite) {

    SV * * tmpsv ;

    if (SvTYPE(item) == SVt_PVMG) 
        memcpy (obj, (void *)SvIVX(item), sizeof (*obj)) ;
    else if (SvTYPE(item) == SVt_PVHV) {
        if ((tmpsv = hv_fetch((HV *)item, "magic", sizeof("magic") - 1, 0)) || overwrite) {
            obj -> magic = (int)davxs_sv2_IV((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)) ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "version", sizeof("version") - 1, 0)) || overwrite) {
            obj -> version = (int)davxs_sv2_IV((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)) ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "name", sizeof("name") - 1, 0)) || overwrite) {
            const char * tmpobj = ((const char *)davxs_sv2_PV((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> name = (const char *)strdup(tmpobj);
            else
                obj -> name = NULL ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "providers", sizeof("providers") - 1, 0)) || overwrite) {
            obj -> providers = (const dav_dyn_provider *)davxs_sv2_Apache__DAV__DynProvider((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)) ;
        }
   ; }

    else
        croak ("initializer for Apache::DAV::DynModule::new is not a hash or object reference") ;

} ;



/* --- Apache::DAV::DynModule -> dir_close --- */



static int davxs_cb_Apache__DAV__DynModule__dir_close (SV * __cbdest,dav_dyn_context * ctx)
    {
    int __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__DynContext_2obj(ctx)) ;

    PUTBACK ;
    __cnt = perl_call_method("dir_close", G_SCALAR) ;


    if (__cnt != 1)
        croak ("davxs_cb_Apache__DAV__DynModule__dir_close expected 1 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (int)davxs_sv2_IV(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static int davxs_cb_Apache__DAV__DynModule__dir_close_obj0 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_close (davxs_Apache__DAV__DynModule_obj[0],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_close_obj1 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_close (davxs_Apache__DAV__DynModule_obj[1],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_close_obj2 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_close (davxs_Apache__DAV__DynModule_obj[2],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_close_obj3 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_close (davxs_Apache__DAV__DynModule_obj[3],ctx) ;
    }

typedef int (*tdavxs_cb_Apache__DAV__DynModule__dir_close_func)(dav_dyn_context * ctx)  ;
static tdavxs_cb_Apache__DAV__DynModule__dir_close_func davxs_davxs_cb_Apache__DAV__DynModule__dir_close_func [4] = {
    davxs_cb_Apache__DAV__DynModule__dir_close_obj0,
    davxs_cb_Apache__DAV__DynModule__dir_close_obj1,
    davxs_cb_Apache__DAV__DynModule__dir_close_obj2,
    davxs_cb_Apache__DAV__DynModule__dir_close_obj3
    } ;



/* --- Apache::DAV::DynModule -> dir_merge --- */



static int davxs_cb_Apache__DAV__DynModule__dir_merge (SV * __cbdest,dav_dyn_context * base,dav_dyn_context * overrides,dav_dyn_context * result)
    {
    int __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__DynContext_2obj(base)) ;
    PUSHs(davxs_Apache__DAV__DynContext_2obj(overrides)) ;
    PUSHs(davxs_Apache__DAV__DynContext_2obj(result)) ;

    PUTBACK ;
    __cnt = perl_call_method("dir_merge", G_SCALAR) ;


    if (__cnt != 1)
        croak ("davxs_cb_Apache__DAV__DynModule__dir_merge expected 1 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (int)davxs_sv2_IV(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static int davxs_cb_Apache__DAV__DynModule__dir_merge_obj0 (dav_dyn_context * base,dav_dyn_context * overrides,dav_dyn_context * result)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_merge (davxs_Apache__DAV__DynModule_obj[0],base,overrides,result) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_merge_obj1 (dav_dyn_context * base,dav_dyn_context * overrides,dav_dyn_context * result)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_merge (davxs_Apache__DAV__DynModule_obj[1],base,overrides,result) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_merge_obj2 (dav_dyn_context * base,dav_dyn_context * overrides,dav_dyn_context * result)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_merge (davxs_Apache__DAV__DynModule_obj[2],base,overrides,result) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_merge_obj3 (dav_dyn_context * base,dav_dyn_context * overrides,dav_dyn_context * result)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_merge (davxs_Apache__DAV__DynModule_obj[3],base,overrides,result) ;
    }

typedef int (*tdavxs_cb_Apache__DAV__DynModule__dir_merge_func)(dav_dyn_context * base,dav_dyn_context * overrides,dav_dyn_context * result)  ;
static tdavxs_cb_Apache__DAV__DynModule__dir_merge_func davxs_davxs_cb_Apache__DAV__DynModule__dir_merge_func [4] = {
    davxs_cb_Apache__DAV__DynModule__dir_merge_obj0,
    davxs_cb_Apache__DAV__DynModule__dir_merge_obj1,
    davxs_cb_Apache__DAV__DynModule__dir_merge_obj2,
    davxs_cb_Apache__DAV__DynModule__dir_merge_obj3
    } ;



/* --- Apache::DAV::DynModule -> dir_param --- */



static int davxs_cb_Apache__DAV__DynModule__dir_param (SV * __cbdest,dav_dyn_context * ctx,const char * param_name,const char * param_value)
    {
    int __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__DynContext_2obj(ctx)) ;
    PUSHs(davxs_PV_2obj(param_name)) ;
    PUSHs(davxs_PV_2obj(param_value)) ;

    PUTBACK ;
    __cnt = perl_call_method("dir_param", G_SCALAR) ;


    if (__cnt != 1)
        croak ("davxs_cb_Apache__DAV__DynModule__dir_param expected 1 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (int)davxs_sv2_IV(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static int davxs_cb_Apache__DAV__DynModule__dir_param_obj0 (dav_dyn_context * ctx,const char * param_name,const char * param_value)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_param (davxs_Apache__DAV__DynModule_obj[0],ctx,param_name,param_value) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_param_obj1 (dav_dyn_context * ctx,const char * param_name,const char * param_value)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_param (davxs_Apache__DAV__DynModule_obj[1],ctx,param_name,param_value) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_param_obj2 (dav_dyn_context * ctx,const char * param_name,const char * param_value)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_param (davxs_Apache__DAV__DynModule_obj[2],ctx,param_name,param_value) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_param_obj3 (dav_dyn_context * ctx,const char * param_name,const char * param_value)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_param (davxs_Apache__DAV__DynModule_obj[3],ctx,param_name,param_value) ;
    }

typedef int (*tdavxs_cb_Apache__DAV__DynModule__dir_param_func)(dav_dyn_context * ctx,const char * param_name,const char * param_value)  ;
static tdavxs_cb_Apache__DAV__DynModule__dir_param_func davxs_davxs_cb_Apache__DAV__DynModule__dir_param_func [4] = {
    davxs_cb_Apache__DAV__DynModule__dir_param_obj0,
    davxs_cb_Apache__DAV__DynModule__dir_param_obj1,
    davxs_cb_Apache__DAV__DynModule__dir_param_obj2,
    davxs_cb_Apache__DAV__DynModule__dir_param_obj3
    } ;



/* --- Apache::DAV::DynModule -> dir_open --- */



static int davxs_cb_Apache__DAV__DynModule__dir_open (SV * __cbdest,dav_dyn_context * ctx)
    {
    int __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__DynContext_2obj(ctx)) ;

    PUTBACK ;
    __cnt = perl_call_method("dir_open", G_SCALAR) ;


    if (__cnt != 1)
        croak ("davxs_cb_Apache__DAV__DynModule__dir_open expected 1 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (int)davxs_sv2_IV(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static int davxs_cb_Apache__DAV__DynModule__dir_open_obj0 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_open (davxs_Apache__DAV__DynModule_obj[0],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_open_obj1 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_open (davxs_Apache__DAV__DynModule_obj[1],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_open_obj2 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_open (davxs_Apache__DAV__DynModule_obj[2],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__dir_open_obj3 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__dir_open (davxs_Apache__DAV__DynModule_obj[3],ctx) ;
    }

typedef int (*tdavxs_cb_Apache__DAV__DynModule__dir_open_func)(dav_dyn_context * ctx)  ;
static tdavxs_cb_Apache__DAV__DynModule__dir_open_func davxs_davxs_cb_Apache__DAV__DynModule__dir_open_func [4] = {
    davxs_cb_Apache__DAV__DynModule__dir_open_obj0,
    davxs_cb_Apache__DAV__DynModule__dir_open_obj1,
    davxs_cb_Apache__DAV__DynModule__dir_open_obj2,
    davxs_cb_Apache__DAV__DynModule__dir_open_obj3
    } ;



/* --- Apache::DAV::DynModule -> module_close --- */



static int davxs_cb_Apache__DAV__DynModule__module_close (SV * __cbdest,dav_dyn_context * ctx)
    {
    int __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__DynContext_2obj(ctx)) ;

    PUTBACK ;
    __cnt = perl_call_method("module_close", G_SCALAR) ;


    if (__cnt != 1)
        croak ("davxs_cb_Apache__DAV__DynModule__module_close expected 1 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (int)davxs_sv2_IV(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static int davxs_cb_Apache__DAV__DynModule__module_close_obj0 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__module_close (davxs_Apache__DAV__DynModule_obj[0],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__module_close_obj1 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__module_close (davxs_Apache__DAV__DynModule_obj[1],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__module_close_obj2 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__module_close (davxs_Apache__DAV__DynModule_obj[2],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__module_close_obj3 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__module_close (davxs_Apache__DAV__DynModule_obj[3],ctx) ;
    }

typedef int (*tdavxs_cb_Apache__DAV__DynModule__module_close_func)(dav_dyn_context * ctx)  ;
static tdavxs_cb_Apache__DAV__DynModule__module_close_func davxs_davxs_cb_Apache__DAV__DynModule__module_close_func [4] = {
    davxs_cb_Apache__DAV__DynModule__module_close_obj0,
    davxs_cb_Apache__DAV__DynModule__module_close_obj1,
    davxs_cb_Apache__DAV__DynModule__module_close_obj2,
    davxs_cb_Apache__DAV__DynModule__module_close_obj3
    } ;



/* --- Apache::DAV::DynModule -> module_open --- */



static int davxs_cb_Apache__DAV__DynModule__module_open (SV * __cbdest,dav_dyn_context * ctx)
    {
    int __retval ;
    SV * __retsv ;

    int __cnt ;
    
    dSP ;
    ENTER ;
    SAVETMPS ;
    PUSHMARK(SP) ;
    PUSHs(__cbdest) ;
    PUSHs(davxs_Apache__DAV__DynContext_2obj(ctx)) ;

    PUTBACK ;
    __cnt = perl_call_method("module_open", G_SCALAR) ;


    if (__cnt != 1)
        croak ("davxs_cb_Apache__DAV__DynModule__module_open expected 1 return values") ;

    SPAGAIN ;
    __retsv = POPs;
    __retval = (int)davxs_sv2_IV(__retsv);

    PUTBACK ;
    FREETMPS ;
    LEAVE ;
    
   
    return __retval ;

    }
   


static int davxs_cb_Apache__DAV__DynModule__module_open_obj0 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__module_open (davxs_Apache__DAV__DynModule_obj[0],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__module_open_obj1 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__module_open (davxs_Apache__DAV__DynModule_obj[1],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__module_open_obj2 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__module_open (davxs_Apache__DAV__DynModule_obj[2],ctx) ;
    }



static int davxs_cb_Apache__DAV__DynModule__module_open_obj3 (dav_dyn_context * ctx)
    {
    return davxs_cb_Apache__DAV__DynModule__module_open (davxs_Apache__DAV__DynModule_obj[3],ctx) ;
    }

typedef int (*tdavxs_cb_Apache__DAV__DynModule__module_open_func)(dav_dyn_context * ctx)  ;
static tdavxs_cb_Apache__DAV__DynModule__module_open_func davxs_davxs_cb_Apache__DAV__DynModule__module_open_func [4] = {
    davxs_cb_Apache__DAV__DynModule__module_open_obj0,
    davxs_cb_Apache__DAV__DynModule__module_open_obj1,
    davxs_cb_Apache__DAV__DynModule__module_open_obj2,
    davxs_cb_Apache__DAV__DynModule__module_open_obj3
    } ;


MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 

int
magic(obj, val=0)
    Apache::DAV::DynModule obj
    int val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (int)  obj->magic;

    if (items > 1) {
        obj->magic = (int) val;
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 

int
version(obj, val=0)
    Apache::DAV::DynModule obj
    int val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (int)  obj->version;

    if (items > 1) {
        obj->version = (int) val;
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 

const char *
name(obj, val=NULL)
    Apache::DAV::DynModule obj
    const char * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (const char *)  obj->name;

    if (items > 1) {
        obj->name = (const char *)strdup(val);
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 

int
module_open(__self, ctx)
    Apache::DAV::DynModule __self
    Apache::DAV::DynContext ctx
CODE:
    RETVAL = (*__self->module_open)(ctx);
OUTPUT:
    RETVAL


MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 

int
module_close(__self, ctx)
    Apache::DAV::DynModule __self
    Apache::DAV::DynContext ctx
CODE:
    RETVAL = (*__self->module_close)(ctx);
OUTPUT:
    RETVAL


MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 

int
dir_open(__self, ctx)
    Apache::DAV::DynModule __self
    Apache::DAV::DynContext ctx
CODE:
    RETVAL = (*__self->dir_open)(ctx);
OUTPUT:
    RETVAL


MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 

int
dir_param(__self, ctx, param_name, param_value)
    Apache::DAV::DynModule __self
    Apache::DAV::DynContext ctx
    const char * param_name
    const char * param_value
CODE:
    RETVAL = (*__self->dir_param)(ctx, param_name, param_value);
OUTPUT:
    RETVAL


MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 

int
dir_merge(__self, base, overrides, result)
    Apache::DAV::DynModule __self
    Apache::DAV::DynContext base
    Apache::DAV::DynContext overrides
    Apache::DAV::DynContext result
CODE:
    RETVAL = (*__self->dir_merge)(base, overrides, result);
OUTPUT:
    RETVAL


MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 

int
dir_close(__self, ctx)
    Apache::DAV::DynModule __self
    Apache::DAV::DynContext ctx
CODE:
    RETVAL = (*__self->dir_close)(ctx);
OUTPUT:
    RETVAL


MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 

Apache::DAV::DynProvider
providers(obj, val=NULL)
    Apache::DAV::DynModule obj
    Apache::DAV::DynProvider val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (Apache__DAV__DynProvider)  obj->providers;

    if (items > 1) {
        obj->providers = (Apache__DAV__DynProvider) val;
    }
  OUTPUT:
    RETVAL

MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 



SV *
new (class,initializer=NULL)
    char * class
    SV * initializer 
PREINIT:
    SV * svobj ;
    Apache__DAV__DynModule  cobj ;
    SV * tmpsv ;
CODE:
    davxs_Apache__DAV__DynModule_create_obj(cobj,svobj,RETVAL,malloc(sizeof(*cobj))) ;

    if (initializer) {
        if (!SvROK(initializer) || !(tmpsv = SvRV(initializer))) 
            croak ("initializer for Apache::DAV::DynModule::new is not a reference") ;

        if (SvTYPE(tmpsv) == SVt_PVHV || SvTYPE(tmpsv) == SVt_PVMG)  
            Apache__DAV__DynModule_new_init (aTHX_ cobj, tmpsv, 0) ;
        else if (SvTYPE(tmpsv) == SVt_PVAV) {
            int i ;
            SvGROW(svobj, sizeof (*cobj) * av_len((AV *)tmpsv)) ;     
            for (i = 0; i <= av_len((AV *)tmpsv); i++) {
                SV * * itemrv = av_fetch((AV *)tmpsv, i, 0) ;
                SV * item ;
                if (!itemrv || !*itemrv || !SvROK(*itemrv) || !(item = SvRV(*itemrv))) 
                    croak ("array element of initializer for Apache::DAV::DynModule::new is not a reference") ;
                Apache__DAV__DynModule_new_init (aTHX_ &cobj[i], item, 1) ;
            }
        }
        else {
             croak ("initializer for Apache::DAV::DynModule::new is not a hash/array/object reference") ;
        }
    }
OUTPUT:
    RETVAL 

MODULE = Apache::DAV::DynModule    PACKAGE = Apache::DAV::DynModule 



void
init_callbacks (obj)
    SV *  obj
PREINIT:
    int  n = -1 ;
    int  i ;
    Apache__DAV__DynModule cobj = (Apache__DAV__DynModule)davxs_sv2_Apache__DAV__DynModule(obj) ;
    SV * ref ;
    SV * perl_obj ;
CODE:

    perl_obj = SvRV(obj) ;
    ref = newRV_noinc(perl_obj) ;

    for (i=0;i < 4;i++)
        {
        if (davxs_Apache__DAV__DynModule_obj[i] == ref)
            {
            n = i ;
            break ;
            }
        }

    if (n < 0)
        for (i=0;i < 4;i++)
            {
            if (davxs_Apache__DAV__DynModule_obj[i] == NULL)
                {
                n = i ;
                break ;
                }
            }
        
    if (n < 0)
        croak ("Limit for concurrent object callbacks reached for Apache::DAV::DynModule. Limit is 4") ;

    davxs_Apache__DAV__DynModule_obj[n] = ref ;
    cobj -> module_open = davxs_davxs_cb_Apache__DAV__DynModule__module_open_func[n] ;
    cobj -> module_close = davxs_davxs_cb_Apache__DAV__DynModule__module_close_func[n] ;
    cobj -> dir_open = davxs_davxs_cb_Apache__DAV__DynModule__dir_open_func[n] ;
    cobj -> dir_param = davxs_davxs_cb_Apache__DAV__DynModule__dir_param_func[n] ;
    cobj -> dir_merge = davxs_davxs_cb_Apache__DAV__DynModule__dir_merge_func[n] ;
    cobj -> dir_close = davxs_davxs_cb_Apache__DAV__DynModule__dir_close_func[n] ;
    

PROTOTYPES: disabled

BOOT:
    items = items; /* -Wall */
