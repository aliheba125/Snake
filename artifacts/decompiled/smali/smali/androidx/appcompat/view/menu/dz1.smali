.class public abstract Landroidx/appcompat/view/menu/dz1;
.super Landroidx/appcompat/view/menu/fz1;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cx1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/fz1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->n()V

    return-void
.end method


# virtual methods
.method public final o()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/dz1;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->R()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/dz1;->b:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/dz1;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dz1;->t()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->R()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/dz1;->b:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/dz1;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract s()Z
.end method

.method public t()V
    .locals 0

    return-void
.end method
