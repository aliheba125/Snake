.class public final Landroidx/appcompat/view/menu/u72;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/y62;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/y62;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/tu1;->y(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->l:Landroidx/appcompat/view/menu/zu1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zu1;->a(Z)V

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Detected application was in foreground"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/u72;->c(JZ)V

    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-static {v0}, Landroidx/appcompat/view/menu/y62;->H(Landroidx/appcompat/view/menu/y62;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/tu1;->y(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->l:Landroidx/appcompat/view/menu/zu1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zu1;->a(Z)V

    invoke-static {}, Landroidx/appcompat/view/menu/ed2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/si1;->x0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/hr1;->p()Landroidx/appcompat/view/menu/zs1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zs1;->I()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->p:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->l:Landroidx/appcompat/view/menu/zu1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/zu1;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/u72;->c(JZ)V

    :cond_1
    return-void
.end method

.method public final c(JZ)V
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    iget-object v0, v0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->p:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/hr1;->r()Landroidx/appcompat/view/menu/d02;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sid"

    move-object v5, v0

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/d02;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v1

    iget-object v1, v1, Landroidx/appcompat/view/menu/tu1;->q:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v1

    iget-object v1, v1, Landroidx/appcompat/view/menu/tu1;->l:Landroidx/appcompat/view/menu/zu1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/zu1;->a(Z)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_sid"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/si1;->m0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    const-string p3, "_aib"

    const-wide/16 v0, 0x1

    invoke-virtual {v8, p3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object p3, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/hr1;->r()Landroidx/appcompat/view/menu/d02;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v6, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/view/menu/d02;->U(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-static {}, Landroidx/appcompat/view/menu/ta2;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object p3

    sget-object v0, Landroidx/appcompat/view/menu/si1;->p0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {p3, v0}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object p3

    iget-object p3, p3, Landroidx/appcompat/view/menu/tu1;->v:Landroidx/appcompat/view/menu/gv1;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/gv1;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_ffr"

    invoke-virtual {v6, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Landroidx/appcompat/view/menu/u72;->a:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/hr1;->r()Landroidx/appcompat/view/menu/d02;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_ssr"

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/d02;->U(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method
