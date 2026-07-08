.class public final Landroidx/appcompat/view/menu/q72;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public final c:Landroidx/appcompat/view/menu/bh1;

.field public final synthetic d:Landroidx/appcompat/view/menu/y62;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/y62;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/x72;

    iget-object v1, p1, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/x72;-><init>(Landroidx/appcompat/view/menu/q72;Landroidx/appcompat/view/menu/iz1;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/q72;->c:Landroidx/appcompat/view/menu/bh1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/q72;->a:J

    iput-wide v0, p0, Landroidx/appcompat/view/menu/q72;->b:J

    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/q72;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroidx/appcompat/view/menu/q72;->d(ZZJ)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/hr1;->o()Landroidx/appcompat/view/menu/oh1;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p0

    invoke-interface {p0}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/oh1;->v(J)V

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/q72;->b:J

    sub-long v0, p1, v0

    iput-wide p1, p0, Landroidx/appcompat/view/menu/q72;->b:J

    return-wide v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->c:Landroidx/appcompat/view/menu/bh1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bh1;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/q72;->a:J

    iput-wide v0, p0, Landroidx/appcompat/view/menu/q72;->b:J

    return-void
.end method

.method public final d(ZZJ)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-static {}, Landroidx/appcompat/view/menu/mb2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/si1;->q0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    iget-object v0, v0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->p:Landroidx/appcompat/view/menu/dv1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    :cond_1
    iget-wide v0, p0, Landroidx/appcompat/view/menu/q72;->a:J

    sub-long v0, p3, v0

    if-nez p1, :cond_2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0, p3, p4}, Landroidx/appcompat/view/menu/q72;->a(J)J

    move-result-wide v0

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v2, "Recording user engagement, ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_et"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/hr1;->s()Landroidx/appcompat/view/menu/r32;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/r32;->C(Z)Landroidx/appcompat/view/menu/t32;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroidx/appcompat/view/menu/x92;->W(Landroidx/appcompat/view/menu/t32;Landroid/os/Bundle;Z)V

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/hr1;->r()Landroidx/appcompat/view/menu/d02;

    move-result-object p2

    const-string v0, "auto"

    const-string v2, "_e"

    invoke-virtual {p2, v0, v2, p1}, Landroidx/appcompat/view/menu/d02;->z0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    iput-wide p3, p0, Landroidx/appcompat/view/menu/q72;->a:J

    iget-object p1, p0, Landroidx/appcompat/view/menu/q72;->c:Landroidx/appcompat/view/menu/bh1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/bh1;->a()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/q72;->c:Landroidx/appcompat/view/menu/bh1;

    const-wide/32 p2, 0x36ee80

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/bh1;->b(J)V

    return v1
.end method

.method public final e(J)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/q72;->c:Landroidx/appcompat/view/menu/bh1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/bh1;->a()V

    return-void
.end method

.method public final f(J)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->d:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/q72;->c:Landroidx/appcompat/view/menu/bh1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bh1;->a()V

    iput-wide p1, p0, Landroidx/appcompat/view/menu/q72;->a:J

    iput-wide p1, p0, Landroidx/appcompat/view/menu/q72;->b:J

    return-void
.end method
