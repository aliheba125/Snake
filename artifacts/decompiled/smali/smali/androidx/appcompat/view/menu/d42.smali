.class public final Landroidx/appcompat/view/menu/d42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/t32;

.field public final synthetic n:J

.field public final synthetic o:Landroidx/appcompat/view/menu/r32;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/r32;Landroidx/appcompat/view/menu/t32;J)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/d42;->o:Landroidx/appcompat/view/menu/r32;

    iput-object p2, p0, Landroidx/appcompat/view/menu/d42;->m:Landroidx/appcompat/view/menu/t32;

    iput-wide p3, p0, Landroidx/appcompat/view/menu/d42;->n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/d42;->o:Landroidx/appcompat/view/menu/r32;

    iget-object v1, p0, Landroidx/appcompat/view/menu/d42;->m:Landroidx/appcompat/view/menu/t32;

    const/4 v2, 0x0

    iget-wide v3, p0, Landroidx/appcompat/view/menu/d42;->n:J

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/r32;->M(Landroidx/appcompat/view/menu/r32;Landroidx/appcompat/view/menu/t32;ZJ)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d42;->o:Landroidx/appcompat/view/menu/r32;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/view/menu/r32;->e:Landroidx/appcompat/view/menu/t32;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/hr1;->t()Landroidx/appcompat/view/menu/h42;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h42;->L(Landroidx/appcompat/view/menu/t32;)V

    return-void
.end method
