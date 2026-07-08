.class public Landroidx/appcompat/view/menu/lz;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/lz$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v1, "accessibility"

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

    sget-object v0, Landroidx/appcompat/view/menu/kz;->b:Landroidx/appcompat/view/menu/go0$e;

    sget-object v1, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v2, "accessibility"

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

    const-string p1, "accessibility"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j8;->l(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 12

    invoke-super {p0}, Landroidx/appcompat/view/menu/j8;->j()V

    new-instance v0, Landroidx/appcompat/view/menu/lz$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/lz$a;-><init>()V

    const-string v1, "interrupt"

    const-string v2, "sendAccessibilityEvent"

    const-string v3, "addClient"

    const-string v4, "removeClient"

    const-string v5, "getInstalledAccessibilityServiceList"

    const-string v6, "getEnabledAccessibilityServiceList"

    const-string v7, "addAccessibilityInteractionConnection"

    const-string v8, "getWindowToken"

    const-string v9, "setSystemAudioCaptioningEnabled"

    const-string v10, "isSystemAudioCaptioningUiEnabled"

    const-string v11, "setSystemAudioCaptioningUiEnabled"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/ob;->f(Landroidx/appcompat/view/menu/md0;[Ljava/lang/String;)V

    return-void
.end method
