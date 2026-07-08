.class public final Landroidx/appcompat/view/menu/hy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/cb2;

.field public final synthetic n:Landroidx/appcompat/view/menu/kx1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kx1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/hy1;->n:Landroidx/appcompat/view/menu/kx1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/hy1;->m:Landroidx/appcompat/view/menu/cb2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/hy1;->n:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->o0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/hy1;->n:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/hy1;->m:Landroidx/appcompat/view/menu/cb2;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->p0()V

    iget-object v2, v1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/si1;->T0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/appcompat/view/menu/cb2;->M:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x64

    :goto_0
    iget-object v3, v1, Landroidx/appcompat/view/menu/cb2;->H:Ljava/lang/String;

    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/lz1;->f(Ljava/lang/String;I)Landroidx/appcompat/view/menu/lz1;

    move-result-object v2

    iget-object v3, v1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v5, "Setting consent, package, consent"

    iget-object v6, v1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/view/menu/o82;->C(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/lz1;->t(Landroidx/appcompat/view/menu/lz1;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/o82;->b0(Landroidx/appcompat/view/menu/cb2;)V

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/si1;->T0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroidx/appcompat/view/menu/cb2;->N:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/fh1;->c(Ljava/lang/String;)Landroidx/appcompat/view/menu/fh1;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/fh1;->f:Landroidx/appcompat/view/menu/fh1;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/fh1;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "Setting DMA consent. package, consent"

    iget-object v5, v1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/o82;->A(Ljava/lang/String;Landroidx/appcompat/view/menu/fh1;)V

    :cond_2
    return-void
.end method
