.class public final Landroidx/appcompat/view/menu/o72;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/appcompat/view/menu/m72;

.field public final synthetic b:Landroidx/appcompat/view/menu/y62;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/y62;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o72;->a:Landroidx/appcompat/view/menu/m72;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-static {v0}, Landroidx/appcompat/view/menu/y62;->B(Landroidx/appcompat/view/menu/y62;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/o72;->a:Landroidx/appcompat/view/menu/m72;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/view/menu/tu1;->s:Landroidx/appcompat/view/menu/zu1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/zu1;->a(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/y62;->D(Z)V

    return-void
.end method

.method public final b(J)V
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/m72;

    iget-object v0, p0, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/m72;-><init>(Landroidx/appcompat/view/menu/o72;JJ)V

    iput-object v6, p0, Landroidx/appcompat/view/menu/o72;->a:Landroidx/appcompat/view/menu/m72;

    iget-object p1, p0, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-static {p1}, Landroidx/appcompat/view/menu/y62;->B(Landroidx/appcompat/view/menu/y62;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/o72;->a:Landroidx/appcompat/view/menu/m72;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
