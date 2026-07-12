.class public final Landroidx/appcompat/view/menu/rx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:J

.field public final synthetic q:Landroidx/appcompat/view/menu/kx1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kx1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/rx1;->q:Landroidx/appcompat/view/menu/kx1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/rx1;->m:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/rx1;->n:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/rx1;->o:Ljava/lang/String;

    iput-wide p5, p0, Landroidx/appcompat/view/menu/rx1;->p:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/rx1;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/rx1;->q:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/rx1;->n:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/o82;->D(Ljava/lang/String;Landroidx/appcompat/view/menu/t32;)V

    return-void

    :cond_0
    new-instance v1, Landroidx/appcompat/view/menu/t32;

    iget-object v2, p0, Landroidx/appcompat/view/menu/rx1;->o:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/appcompat/view/menu/rx1;->p:J

    invoke-direct {v1, v2, v0, v3, v4}, Landroidx/appcompat/view/menu/t32;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rx1;->q:Landroidx/appcompat/view/menu/kx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kx1;->j(Landroidx/appcompat/view/menu/kx1;)Landroidx/appcompat/view/menu/o82;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/rx1;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/o82;->D(Ljava/lang/String;Landroidx/appcompat/view/menu/t32;)V

    return-void
.end method
