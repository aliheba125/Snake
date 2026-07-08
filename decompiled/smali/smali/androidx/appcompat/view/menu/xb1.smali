.class public final Landroidx/appcompat/view/menu/xb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/z7$c;
.implements Landroidx/appcompat/view/menu/lc1;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/m2$f;

.field public final b:Landroidx/appcompat/view/menu/r2;

.field public c:Landroidx/appcompat/view/menu/mz;

.field public d:Ljava/util/Set;

.field public e:Z

.field public final synthetic f:Landroidx/appcompat/view/menu/ay;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ay;Landroidx/appcompat/view/menu/m2$f;Landroidx/appcompat/view/menu/r2;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/xb1;->f:Landroidx/appcompat/view/menu/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/xb1;->c:Landroidx/appcompat/view/menu/mz;

    iput-object p1, p0, Landroidx/appcompat/view/menu/xb1;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/xb1;->e:Z

    iput-object p2, p0, Landroidx/appcompat/view/menu/xb1;->a:Landroidx/appcompat/view/menu/m2$f;

    iput-object p3, p0, Landroidx/appcompat/view/menu/xb1;->b:Landroidx/appcompat/view/menu/r2;

    return-void
.end method

.method public static bridge synthetic d(Landroidx/appcompat/view/menu/xb1;)Landroidx/appcompat/view/menu/m2$f;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/xb1;->a:Landroidx/appcompat/view/menu/m2$f;

    return-object p0
.end method

.method public static bridge synthetic e(Landroidx/appcompat/view/menu/xb1;)Landroidx/appcompat/view/menu/r2;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/xb1;->b:Landroidx/appcompat/view/menu/r2;

    return-object p0
.end method

.method public static bridge synthetic f(Landroidx/appcompat/view/menu/xb1;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/xb1;->e:Z

    return-void
.end method

.method public static bridge synthetic g(Landroidx/appcompat/view/menu/xb1;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/xb1;->h()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/ef;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/xb1;->f:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/wb1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/wb1;-><init>(Landroidx/appcompat/view/menu/xb1;Landroidx/appcompat/view/menu/ef;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/mz;Ljava/util/Set;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/xb1;->c:Landroidx/appcompat/view/menu/mz;

    iput-object p2, p0, Landroidx/appcompat/view/menu/xb1;->d:Ljava/util/Set;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/xb1;->h()V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-instance p1, Landroidx/appcompat/view/menu/ef;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/ef;-><init>(I)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/xb1;->c(Landroidx/appcompat/view/menu/ef;)V

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/ef;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/xb1;->f:Landroidx/appcompat/view/menu/ay;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ay;->A(Landroidx/appcompat/view/menu/ay;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/xb1;->b:Landroidx/appcompat/view/menu/r2;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/tb1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/tb1;->H(Landroidx/appcompat/view/menu/ef;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/xb1;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/xb1;->c:Landroidx/appcompat/view/menu/mz;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/xb1;->a:Landroidx/appcompat/view/menu/m2$f;

    iget-object v2, p0, Landroidx/appcompat/view/menu/xb1;->d:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Landroidx/appcompat/view/menu/m2$f;->k(Landroidx/appcompat/view/menu/mz;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
