.class public final Landroidx/appcompat/view/menu/az1;
.super Landroidx/appcompat/view/menu/cz1;
.source "SourceFile"


# instance fields
.field public final e:[B

.field public final f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/cz1;-><init>(Landroidx/appcompat/view/menu/ez1;)V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/appcompat/view/menu/az1;->k:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/az1;->e:[B

    add-int/2addr p3, p2

    iput p3, p0, Landroidx/appcompat/view/menu/az1;->g:I

    iput p2, p0, Landroidx/appcompat/view/menu/az1;->i:I

    iput p2, p0, Landroidx/appcompat/view/menu/az1;->j:I

    iput-boolean p4, p0, Landroidx/appcompat/view/menu/az1;->f:Z

    return-void
.end method

.method public synthetic constructor <init>([BIIZLandroidx/appcompat/view/menu/gz1;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p2}, Landroidx/appcompat/view/menu/az1;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cz1;->d()I

    move-result v0

    add-int/2addr p1, v0

    if-ltz p1, :cond_1

    iget v0, p0, Landroidx/appcompat/view/menu/az1;->k:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroidx/appcompat/view/menu/az1;->k:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/az1;->f()V

    return v0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/s12;->f()Landroidx/appcompat/view/menu/s12;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/s12;->e()Landroidx/appcompat/view/menu/s12;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/s12;->d()Landroidx/appcompat/view/menu/s12;

    move-result-object p1

    throw p1
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/az1;->i:I

    iget v1, p0, Landroidx/appcompat/view/menu/az1;->j:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/az1;->g:I

    iget v1, p0, Landroidx/appcompat/view/menu/az1;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/view/menu/az1;->g:I

    iget v1, p0, Landroidx/appcompat/view/menu/az1;->j:I

    sub-int v1, v0, v1

    iget v2, p0, Landroidx/appcompat/view/menu/az1;->k:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/appcompat/view/menu/az1;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/view/menu/az1;->g:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/az1;->h:I

    return-void
.end method
