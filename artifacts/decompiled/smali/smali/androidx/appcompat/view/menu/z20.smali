.class public Landroidx/appcompat/view/menu/z20;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/z20$a;,
        Landroidx/appcompat/view/menu/z20$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v1, "mount"

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

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v0

    const-string v1, "mount"

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/y20;->b:Landroidx/appcompat/view/menu/go0$e;

    sget-object v2, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/v10;->b:Landroidx/appcompat/view/menu/go0$e;

    sget-object v2, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    :goto_0
    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    const-string p1, "mount"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j8;->l(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/j8;->j()V

    new-instance v0, Landroidx/appcompat/view/menu/z20$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z20$a;-><init>()V

    const-string v1, "getVolumeList"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    new-instance v0, Landroidx/appcompat/view/menu/z20$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z20$b;-><init>()V

    const-string v1, "mkdirs"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    return-void
.end method
