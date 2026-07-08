.class public Landroidx/appcompat/view/menu/r10;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/r10$g;,
        Landroidx/appcompat/view/menu/r10$h;,
        Landroidx/appcompat/view/menu/r10$e;,
        Landroidx/appcompat/view/menu/r10$d;,
        Landroidx/appcompat/view/menu/r10$c;,
        Landroidx/appcompat/view/menu/r10$k;,
        Landroidx/appcompat/view/menu/r10$j;,
        Landroidx/appcompat/view/menu/r10$f;,
        Landroidx/appcompat/view/menu/r10$i;,
        Landroidx/appcompat/view/menu/r10$b;,
        Landroidx/appcompat/view/menu/r10$a;,
        Landroidx/appcompat/view/menu/r10$l;,
        Landroidx/appcompat/view/menu/r10$m;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v1, "location"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/j8;-><init>(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/q10;->b:Landroidx/appcompat/view/menu/go0$e;

    sget-object v1, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v2, "location"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    const-string p1, "location"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j8;->l(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p3}, Landroidx/appcompat/view/menu/od0;->f([Ljava/lang/Object;)Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ob;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/j8;->j()V

    new-instance v0, Landroidx/appcompat/view/menu/r10$g;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$g;-><init>()V

    const-string v1, "registerGnssStatusCallback"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$h;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$h;-><init>()V

    const-string v1, "registerLocationListener"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$e;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$e;-><init>()V

    const-string v1, "getLastLocation"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$d;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$d;-><init>()V

    const-string v1, "getLastKnownLocation"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$c;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$c;-><init>()V

    const-string v1, "getCurrentLocation"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$k;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$k;-><init>()V

    const-string v1, "requestLocationUpdates"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$j;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$j;-><init>()V

    const-string v1, "removeUpdates"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$f;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$f;-><init>()V

    const-string v1, "getProviderProperties"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$i;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$i;-><init>()V

    const-string v1, "removeGpsStatusListener"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$b;-><init>()V

    const-string v1, "getBestProvider"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$a;-><init>()V

    const-string v1, "getAllProviders"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$l;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$l;-><init>()V

    const-string v1, "isProviderEnabledForUser"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/r10$m;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/r10$m;-><init>()V

    const-string v1, "setExtraLocationControllerPackageEnabled"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    return-void
.end method
