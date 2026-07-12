.class public final Landroidx/appcompat/view/menu/fr1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/fi1;

.field public final b:Landroidx/appcompat/view/menu/pw1;

.field public final c:Landroidx/appcompat/view/menu/pw1;

.field public final d:Landroidx/appcompat/view/menu/c52;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/fi1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/fi1;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/fr1;->a:Landroidx/appcompat/view/menu/fi1;

    new-instance v1, Landroidx/appcompat/view/menu/pw1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/view/menu/pw1;-><init>(Landroidx/appcompat/view/menu/pw1;Landroidx/appcompat/view/menu/fi1;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/fr1;->c:Landroidx/appcompat/view/menu/pw1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pw1;->d()Landroidx/appcompat/view/menu/pw1;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/fr1;->b:Landroidx/appcompat/view/menu/pw1;

    new-instance v0, Landroidx/appcompat/view/menu/c52;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/c52;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/fr1;->d:Landroidx/appcompat/view/menu/c52;

    new-instance v2, Landroidx/appcompat/view/menu/ag2;

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/ag2;-><init>(Landroidx/appcompat/view/menu/c52;)V

    const-string v3, "require"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/view/menu/pw1;->h(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    const-string v2, "internal.platform"

    sget-object v3, Landroidx/appcompat/view/menu/ap1;->a:Landroidx/appcompat/view/menu/ap1;

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/c52;->b(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    new-instance v0, Landroidx/appcompat/view/menu/yf1;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    const-string v2, "runtime.counter"

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/pw1;->h(Ljava/lang/String;Landroidx/appcompat/view/menu/qg1;)V

    return-void
.end method


# virtual methods
.method public final varargs a(Landroidx/appcompat/view/menu/pw1;[Landroidx/appcompat/view/menu/kt1;)Landroidx/appcompat/view/menu/qg1;
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v0, p2, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/y02;->a(Landroidx/appcompat/view/menu/kt1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/view/menu/fr1;->c:Landroidx/appcompat/view/menu/pw1;

    invoke-static {v3}, Landroidx/appcompat/view/menu/iu1;->b(Landroidx/appcompat/view/menu/pw1;)I

    instance-of v3, v0, Landroidx/appcompat/view/menu/wg1;

    if-nez v3, :cond_0

    instance-of v3, v0, Landroidx/appcompat/view/menu/sg1;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/fr1;->a:Landroidx/appcompat/view/menu/fi1;

    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/view/menu/fi1;->a(Landroidx/appcompat/view/menu/pw1;Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/fr1;->d:Landroidx/appcompat/view/menu/c52;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/c52;->b(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    return-void
.end method
