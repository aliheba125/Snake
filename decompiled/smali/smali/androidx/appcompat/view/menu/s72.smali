.class public final synthetic Landroidx/appcompat/view/menu/s72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic m:Landroidx/appcompat/view/menu/m72;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/m72;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/s72;->m:Landroidx/appcompat/view/menu/m72;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/s72;->m:Landroidx/appcompat/view/menu/m72;

    iget-object v1, v0, Landroidx/appcompat/view/menu/m72;->o:Landroidx/appcompat/view/menu/o72;

    iget-wide v5, v0, Landroidx/appcompat/view/menu/m72;->m:J

    iget-wide v2, v0, Landroidx/appcompat/view/menu/m72;->n:J

    iget-object v0, v1, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, v1, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v4, "Application going to the background"

    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->s:Landroidx/appcompat/view/menu/zu1;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/zu1;->a(Z)V

    iget-object v0, v1, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/y62;->D(Z)V

    iget-object v0, v1, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qf1;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    iget-object v0, v0, Landroidx/appcompat/view/menu/y62;->f:Landroidx/appcompat/view/menu/q72;

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/q72;->e(J)V

    iget-object v0, v1, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroidx/appcompat/view/menu/y62;->E(ZZJ)Z

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/yc2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v2, Landroidx/appcompat/view/menu/si1;->K0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Application backgrounded at: timestamp_millis"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, v1, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/hr1;->r()Landroidx/appcompat/view/menu/d02;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ab"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/d02;->U(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
