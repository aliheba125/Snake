.class public abstract Landroidx/appcompat/view/menu/j;
.super Landroidx/appcompat/view/menu/u31;
.source "SourceFile"


# instance fields
.field public final m:I

.field public n:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/u31;-><init>()V

    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/nj0;->k(II)I

    iput p1, p0, Landroidx/appcompat/view/menu/j;->m:I

    iput p2, p0, Landroidx/appcompat/view/menu/j;->n:I

    return-void
.end method


# virtual methods
.method public abstract b(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/j;->n:I

    iget v1, p0, Landroidx/appcompat/view/menu/j;->m:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/j;->n:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/j;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/j;->n:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/j;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/j;->n:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/j;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/j;->n:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/j;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/j;->n:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
