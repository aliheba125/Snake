.class public final Landroidx/appcompat/view/menu/n22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/lz1;

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:Z

.field public final synthetic q:Landroidx/appcompat/view/menu/lz1;

.field public final synthetic r:Landroidx/appcompat/view/menu/d02;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d02;Landroidx/appcompat/view/menu/lz1;JJZLandroidx/appcompat/view/menu/lz1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/n22;->r:Landroidx/appcompat/view/menu/d02;

    iput-object p2, p0, Landroidx/appcompat/view/menu/n22;->m:Landroidx/appcompat/view/menu/lz1;

    iput-wide p3, p0, Landroidx/appcompat/view/menu/n22;->n:J

    iput-wide p5, p0, Landroidx/appcompat/view/menu/n22;->o:J

    iput-boolean p7, p0, Landroidx/appcompat/view/menu/n22;->p:Z

    iput-object p8, p0, Landroidx/appcompat/view/menu/n22;->q:Landroidx/appcompat/view/menu/lz1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/view/menu/n22;->r:Landroidx/appcompat/view/menu/d02;

    iget-object v1, p0, Landroidx/appcompat/view/menu/n22;->m:Landroidx/appcompat/view/menu/lz1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/d02;->J(Landroidx/appcompat/view/menu/lz1;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/n22;->r:Landroidx/appcompat/view/menu/d02;

    iget-wide v1, p0, Landroidx/appcompat/view/menu/n22;->n:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/d02;->E(JZ)V

    iget-object v4, p0, Landroidx/appcompat/view/menu/n22;->r:Landroidx/appcompat/view/menu/d02;

    iget-object v5, p0, Landroidx/appcompat/view/menu/n22;->m:Landroidx/appcompat/view/menu/lz1;

    iget-wide v6, p0, Landroidx/appcompat/view/menu/n22;->o:J

    const/4 v8, 0x1

    iget-boolean v9, p0, Landroidx/appcompat/view/menu/n22;->p:Z

    invoke-static/range {v4 .. v9}, Landroidx/appcompat/view/menu/d02;->N(Landroidx/appcompat/view/menu/d02;Landroidx/appcompat/view/menu/lz1;JZZ)V

    invoke-static {}, Landroidx/appcompat/view/menu/ed2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/n22;->r:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/si1;->x0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/n22;->r:Landroidx/appcompat/view/menu/d02;

    iget-object v1, p0, Landroidx/appcompat/view/menu/n22;->m:Landroidx/appcompat/view/menu/lz1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/n22;->q:Landroidx/appcompat/view/menu/lz1;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/d02;->O(Landroidx/appcompat/view/menu/d02;Landroidx/appcompat/view/menu/lz1;Landroidx/appcompat/view/menu/lz1;)V

    :cond_0
    return-void
.end method
