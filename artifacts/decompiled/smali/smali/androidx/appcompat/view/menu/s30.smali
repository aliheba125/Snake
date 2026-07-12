.class public Landroidx/appcompat/view/menu/s30;
.super Landroidx/appcompat/view/menu/j8;
.source "SourceFile"


# static fields
.field public static final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vibrator_manager"

    sput-object v0, Landroidx/appcompat/view/menu/s30;->q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "vibrator"

    sput-object v0, Landroidx/appcompat/view/menu/s30;->q:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    sget-object v1, Landroidx/appcompat/view/menu/s30;->q:Ljava/lang/String;

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
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/bt0;->c:Landroidx/appcompat/view/menu/go0$e;

    sget-object v1, Landroidx/appcompat/view/menu/s30;->q:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/appcompat/view/menu/q30;->b:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Landroidx/appcompat/view/menu/r30;->b:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    sget-object p1, Landroidx/appcompat/view/menu/s30;->q:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j8;->l(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p3}, Landroidx/appcompat/view/menu/od0;->g([Ljava/lang/Object;)V

    invoke-static {p3}, Landroidx/appcompat/view/menu/od0;->f([Ljava/lang/Object;)Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ob;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
