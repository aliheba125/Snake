.class public Landroidx/appcompat/view/menu/vz;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/vz$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v1, "activity_task"

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

    sget-object v0, Landroidx/appcompat/view/menu/uz;->b:Landroidx/appcompat/view/menu/go0$e;

    sget-object v1, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    const-string v2, "activity_task"

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
    .locals 2

    const-string p1, "activity_task"

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j8;->l(Ljava/lang/String;)V

    sget-object p1, Landroidx/appcompat/view/menu/s1;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Landroidx/appcompat/view/menu/uu0;->b:Landroidx/appcompat/view/menu/go0$b;

    sget-object v0, Landroidx/appcompat/view/menu/uz;->b:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public j()V
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/j1;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ob;->c(Ljava/util/Map;)V

    new-instance v0, Landroidx/appcompat/view/menu/vz$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/vz$a;-><init>()V

    const-string v1, "setTaskDescription"

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/ob;->e(Ljava/lang/String;Landroidx/appcompat/view/menu/md0;)V

    return-void
.end method
