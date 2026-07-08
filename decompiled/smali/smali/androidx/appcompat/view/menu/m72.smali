.class public final Landroidx/appcompat/view/menu/m72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public m:J

.field public n:J

.field public final synthetic o:Landroidx/appcompat/view/menu/o72;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o72;JJ)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/m72;->o:Landroidx/appcompat/view/menu/o72;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Landroidx/appcompat/view/menu/m72;->m:J

    iput-wide p4, p0, Landroidx/appcompat/view/menu/m72;->n:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/m72;->o:Landroidx/appcompat/view/menu/o72;

    iget-object v0, v0, Landroidx/appcompat/view/menu/o72;->b:Landroidx/appcompat/view/menu/y62;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/s72;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/s72;-><init>(Landroidx/appcompat/view/menu/m72;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method
