.class public Landroidx/appcompat/view/menu/tz$t;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/tz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {p3}, Landroidx/appcompat/view/menu/od0;->f([Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tz$t;->g()I

    move-result v0

    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    check-cast v1, Landroid/content/IIntentReceiver;

    invoke-static {v1}, Landroidx/appcompat/view/menu/y40;->j(Landroid/content/IIntentReceiver;)Landroid/content/IIntentReceiver;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/m90$a$a;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v3, v1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v3, Landroidx/appcompat/view/menu/m90$a;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    aput-object v2, p3, v0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tz$t;->f()I

    move-result v0

    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tz$t;->f()I

    move-result v0

    const/4 v1, 0x0

    aput-object v1, p3, v0

    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public g()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method
