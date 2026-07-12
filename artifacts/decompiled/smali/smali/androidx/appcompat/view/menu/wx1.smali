.class public final Landroidx/appcompat/view/menu/wx1;
.super Landroidx/appcompat/view/menu/ay1;
.source "SourceFile"


# instance fields
.field public m:I

.field public final n:I

.field public final synthetic o:Landroidx/appcompat/view/menu/qx1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/qx1;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/wx1;->o:Landroidx/appcompat/view/menu/qx1;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ay1;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/wx1;->m:I

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qx1;->t()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/wx1;->n:I

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/wx1;->m:I

    iget v1, p0, Landroidx/appcompat/view/menu/wx1;->n:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/wx1;->m:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/wx1;->o:Landroidx/appcompat/view/menu/qx1;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/qx1;->s(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/wx1;->m:I

    iget v1, p0, Landroidx/appcompat/view/menu/wx1;->n:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
