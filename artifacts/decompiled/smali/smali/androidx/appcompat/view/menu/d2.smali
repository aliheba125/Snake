.class public final Landroidx/appcompat/view/menu/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ra0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used"

    return-object v0
.end method

.method public b(Ljava/util/List;)Landroidx/appcompat/view/menu/qa0;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/py;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/ry;->a(Landroid/os/Looper;Z)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Landroidx/appcompat/view/menu/py;-><init>(Landroid/os/Handler;Ljava/lang/String;ILandroidx/appcompat/view/menu/lj;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The main looper is not available"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 1

    const v0, 0x3fffffff    # 1.9999999f

    return v0
.end method
