.class public final Landroidx/appcompat/view/menu/y62;
.super Landroidx/appcompat/view/menu/cp1;
.source "SourceFile"


# instance fields
.field public c:Landroid/os/Handler;

.field public d:Z

.field public final e:Landroidx/appcompat/view/menu/u72;

.field public final f:Landroidx/appcompat/view/menu/q72;

.field public final g:Landroidx/appcompat/view/menu/o72;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cx1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/cp1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/y62;->d:Z

    new-instance p1, Landroidx/appcompat/view/menu/u72;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/u72;-><init>(Landroidx/appcompat/view/menu/y62;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/y62;->e:Landroidx/appcompat/view/menu/u72;

    new-instance p1, Landroidx/appcompat/view/menu/q72;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/q72;-><init>(Landroidx/appcompat/view/menu/y62;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/y62;->f:Landroidx/appcompat/view/menu/q72;

    new-instance p1, Landroidx/appcompat/view/menu/o72;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/o72;-><init>(Landroidx/appcompat/view/menu/y62;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/y62;->g:Landroidx/appcompat/view/menu/o72;

    return-void
.end method

.method public static bridge synthetic B(Landroidx/appcompat/view/menu/y62;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/y62;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic C(Landroidx/appcompat/view/menu/y62;J)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y62;->G()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y62;->g:Landroidx/appcompat/view/menu/o72;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/o72;->b(J)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/y62;->f:Landroidx/appcompat/view/menu/q72;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/q72;->e(J)V

    :cond_0
    return-void
.end method

.method private final G()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y62;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/wl1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/wl1;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/y62;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static synthetic H(Landroidx/appcompat/view/menu/y62;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y62;->G()V

    return-void
.end method

.method public static synthetic I(Landroidx/appcompat/view/menu/y62;J)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y62;->G()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/si1;->Q0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/y62;->d:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y62;->f:Landroidx/appcompat/view/menu/q72;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/q72;->f(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->s:Landroidx/appcompat/view/menu/zu1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zu1;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/y62;->f:Landroidx/appcompat/view/menu/q72;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/q72;->f(J)V

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/y62;->g:Landroidx/appcompat/view/menu/o72;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/o72;->a()V

    iget-object p0, p0, Landroidx/appcompat/view/menu/y62;->e:Landroidx/appcompat/view/menu/u72;

    iget-object p1, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    iget-object p1, p1, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->p()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/u72;->b(JZ)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final D(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/y62;->d:Z

    return-void
.end method

.method public final E(ZZJ)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y62;->f:Landroidx/appcompat/view/menu/q72;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/q72;->d(ZZJ)Z

    move-result p1

    return p1
.end method

.method public final F()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/y62;->d:Z

    return v0
.end method

.method public final bridge synthetic a()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Landroidx/appcompat/view/menu/ci1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Landroidx/appcompat/view/menu/tu1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroidx/appcompat/view/menu/x92;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->k()V

    return-void
.end method

.method public final bridge synthetic l()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->n()V

    return-void
.end method

.method public final bridge synthetic o()Landroidx/appcompat/view/menu/oh1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->o()Landroidx/appcompat/view/menu/oh1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Landroidx/appcompat/view/menu/zs1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->p()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Landroidx/appcompat/view/menu/ft1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->q()Landroidx/appcompat/view/menu/ft1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroidx/appcompat/view/menu/d02;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->r()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Landroidx/appcompat/view/menu/r32;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->s()Landroidx/appcompat/view/menu/r32;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Landroidx/appcompat/view/menu/h42;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->t()Landroidx/appcompat/view/menu/h42;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Landroidx/appcompat/view/menu/y62;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/hr1;->u()Landroidx/appcompat/view/menu/y62;

    move-result-object v0

    return-object v0
.end method
