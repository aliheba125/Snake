.class public Landroidx/appcompat/view/menu/s00;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v1, "connectivity"

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

    sget-object v0, Landroidx/appcompat/view/menu/r00;->b:Landroidx/appcompat/view/menu/go0$e;

    sget-object v1, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v2, "connectivity"

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

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j8;->l(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/view/menu/j8;->j()V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v1, "getAllNetworkInfo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v1, "getAllNetworks"

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/y41;

    const-string v1, "getNetworkCapabilities"

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y41;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->d(Landroidx/appcompat/view/menu/md0;)V

    return-void
.end method
