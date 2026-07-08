.class public Landroidx/appcompat/view/menu/tt0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/tt0$c;,
        Landroidx/appcompat/view/menu/tt0$b;,
        Landroidx/appcompat/view/menu/tt0$a;
    }
.end annotation


# instance fields
.field public final a:[Landroidx/appcompat/view/menu/ut0;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/Path;

.field public final g:Landroidx/appcompat/view/menu/ut0;

.field public final h:[F

.field public final i:[F

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroidx/appcompat/view/menu/ut0;

    iput-object v1, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Landroidx/appcompat/view/menu/tt0;->c:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/tt0;->d:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/tt0;->e:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/tt0;->f:Landroid/graphics/Path;

    new-instance v1, Landroidx/appcompat/view/menu/ut0;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/ut0;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/tt0;->g:Landroidx/appcompat/view/menu/ut0;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/appcompat/view/menu/tt0;->i:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/tt0;->j:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/tt0;->k:Landroid/graphics/Path;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/tt0;->l:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    new-instance v3, Landroidx/appcompat/view/menu/ut0;

    invoke-direct {v3}, Landroidx/appcompat/view/menu/ut0;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/tt0;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static k()Landroidx/appcompat/view/menu/tt0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/tt0$a;->a:Landroidx/appcompat/view/menu/tt0;

    return-object v0
.end method


# virtual methods
.method public final a(I)F
    .locals 0

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x5a

    int-to-float p1, p1

    return p1
.end method

.method public final b(Landroidx/appcompat/view/menu/tt0$c;I)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ut0;->k()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ut0;->l()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez p2, :cond_0

    iget-object v0, p1, Landroidx/appcompat/view/menu/tt0$c;->b:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/tt0$c;->b:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v0, v0, p2

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroidx/appcompat/view/menu/tt0$c;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ut0;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object p1, p1, Landroidx/appcompat/view/menu/tt0$c;->d:Landroidx/appcompat/view/menu/tt0$b;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v0, v0, p2

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Landroidx/appcompat/view/menu/tt0$b;->b(Landroidx/appcompat/view/menu/ut0;Landroid/graphics/Matrix;I)V

    :cond_1
    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/tt0$c;I)V
    .locals 8

    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    iget-object v2, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ut0;->i()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    iget-object v2, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ut0;->j()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->i:[F

    iget-object v2, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ut0;->k()F

    move-result v2

    aput v2, v1, v3

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->i:[F

    iget-object v2, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ut0;->l()F

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/tt0;->i:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    aget v2, v1, v3

    iget-object v5, p0, Landroidx/appcompat/view/menu/tt0;->i:[F

    aget v6, v5, v3

    sub-float/2addr v2, v6

    float-to-double v6, v2

    aget v1, v1, v4

    aget v2, v5, v4

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v5, p1, Landroidx/appcompat/view/menu/tt0$c;->c:Landroid/graphics/RectF;

    invoke-virtual {p0, v5, p2}, Landroidx/appcompat/view/menu/tt0;->i(Landroid/graphics/RectF;I)F

    move-result v5

    iget-object v6, p0, Landroidx/appcompat/view/menu/tt0;->g:Landroidx/appcompat/view/menu/ut0;

    invoke-virtual {v6, v2, v2}, Landroidx/appcompat/view/menu/ut0;->n(FF)V

    iget-object v2, p1, Landroidx/appcompat/view/menu/tt0$c;->a:Landroidx/appcompat/view/menu/st0;

    invoke-virtual {p0, p2, v2}, Landroidx/appcompat/view/menu/tt0;->j(ILandroidx/appcompat/view/menu/st0;)Landroidx/appcompat/view/menu/kn;

    move-result-object v2

    iget v6, p1, Landroidx/appcompat/view/menu/tt0$c;->e:F

    iget-object v7, p0, Landroidx/appcompat/view/menu/tt0;->g:Landroidx/appcompat/view/menu/ut0;

    invoke-virtual {v2, v1, v5, v6, v7}, Landroidx/appcompat/view/menu/kn;->b(FFFLandroidx/appcompat/view/menu/ut0;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->g:Landroidx/appcompat/view/menu/ut0;

    iget-object v5, p0, Landroidx/appcompat/view/menu/tt0;->c:[Landroid/graphics/Matrix;

    aget-object v5, v5, p2

    iget-object v6, p0, Landroidx/appcompat/view/menu/tt0;->j:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v6}, Landroidx/appcompat/view/menu/ut0;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/tt0;->l:Z

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/kn;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->j:Landroid/graphics/Path;

    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/view/menu/tt0;->l(Landroid/graphics/Path;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->j:Landroid/graphics/Path;

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/tt0;->l(Landroid/graphics/Path;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->j:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->f:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->g:Landroidx/appcompat/view/menu/ut0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ut0;->k()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->g:Landroidx/appcompat/view/menu/ut0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ut0;->l()F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->c:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->e:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    aget v2, v1, v3

    aget v1, v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->g:Landroidx/appcompat/view/menu/ut0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Landroidx/appcompat/view/menu/tt0;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ut0;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->g:Landroidx/appcompat/view/menu/ut0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroidx/appcompat/view/menu/tt0$c;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ut0;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/tt0$c;->d:Landroidx/appcompat/view/menu/tt0$b;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->g:Landroidx/appcompat/view/menu/ut0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-interface {p1, v0, v1, p2}, Landroidx/appcompat/view/menu/tt0$b;->a(Landroidx/appcompat/view/menu/ut0;Landroid/graphics/Matrix;I)V

    :cond_2
    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/st0;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/tt0;->e(Landroidx/appcompat/view/menu/st0;FLandroid/graphics/RectF;Landroidx/appcompat/view/menu/tt0$b;Landroid/graphics/Path;)V

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/st0;FLandroid/graphics/RectF;Landroidx/appcompat/view/menu/tt0$b;Landroid/graphics/Path;)V
    .locals 8

    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->f:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    new-instance v0, Landroidx/appcompat/view/menu/tt0$c;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/tt0$c;-><init>(Landroidx/appcompat/view/menu/st0;FLandroid/graphics/RectF;Landroidx/appcompat/view/menu/tt0$b;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/tt0;->m(Landroidx/appcompat/view/menu/tt0$c;I)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/tt0;->n(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_1

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/tt0;->b(Landroidx/appcompat/view/menu/tt0$c;I)V

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/tt0;->c(Landroidx/appcompat/view/menu/tt0$c;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/tt0;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/tt0;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/tt0;->e:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p5, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_2
    return-void
.end method

.method public final f(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_0
    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_1
    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_2
    iget p1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    return-void
.end method

.method public final g(ILandroidx/appcompat/view/menu/st0;)Landroidx/appcompat/view/menu/gh;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->t()Landroidx/appcompat/view/menu/gh;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->r()Landroidx/appcompat/view/menu/gh;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->j()Landroidx/appcompat/view/menu/gh;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->l()Landroidx/appcompat/view/menu/gh;

    move-result-object p1

    return-object p1
.end method

.method public final h(ILandroidx/appcompat/view/menu/st0;)Landroidx/appcompat/view/menu/hh;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->s()Landroidx/appcompat/view/menu/hh;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->q()Landroidx/appcompat/view/menu/hh;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->i()Landroidx/appcompat/view/menu/hh;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->k()Landroidx/appcompat/view/menu/hh;

    move-result-object p1

    return-object p1
.end method

.method public final i(Landroid/graphics/RectF;I)F
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v1, v1, p2

    iget v2, v1, Landroidx/appcompat/view/menu/ut0;->c:F

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v1, v1, Landroidx/appcompat/view/menu/ut0;->d:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq p2, v2, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    aget p2, p2, v2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    aget p2, p2, v3

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method

.method public final j(ILandroidx/appcompat/view/menu/st0;)Landroidx/appcompat/view/menu/kn;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->o()Landroidx/appcompat/view/menu/kn;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->p()Landroidx/appcompat/view/menu/kn;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->n()Landroidx/appcompat/view/menu/kn;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/st0;->h()Landroidx/appcompat/view/menu/kn;

    move-result-object p1

    return-object p1
.end method

.method public final l(Landroid/graphics/Path;I)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v0, v0, p2

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object p2, v1, p2

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->k:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/view/menu/ut0;->d(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->k:Landroid/graphics/Path;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->k:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final m(Landroidx/appcompat/view/menu/tt0$c;I)V
    .locals 7

    iget-object v0, p1, Landroidx/appcompat/view/menu/tt0$c;->a:Landroidx/appcompat/view/menu/st0;

    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/tt0;->g(ILandroidx/appcompat/view/menu/st0;)Landroidx/appcompat/view/menu/gh;

    move-result-object v6

    iget-object v0, p1, Landroidx/appcompat/view/menu/tt0$c;->a:Landroidx/appcompat/view/menu/st0;

    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/tt0;->h(ILandroidx/appcompat/view/menu/st0;)Landroidx/appcompat/view/menu/hh;

    move-result-object v1

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v2, v0, p2

    const/high16 v3, 0x42b40000    # 90.0f

    iget v4, p1, Landroidx/appcompat/view/menu/tt0$c;->e:F

    iget-object v5, p1, Landroidx/appcompat/view/menu/tt0$c;->c:Landroid/graphics/RectF;

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/hh;->b(Landroidx/appcompat/view/menu/ut0;FFLandroid/graphics/RectF;Landroidx/appcompat/view/menu/gh;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/tt0;->a(I)F

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p1, Landroidx/appcompat/view/menu/tt0$c;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->d:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/view/menu/tt0;->f(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->d:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method public final n(I)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ut0;->i()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->a:[Landroidx/appcompat/view/menu/ut0;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ut0;->j()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Landroidx/appcompat/view/menu/tt0;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/tt0;->a(I)F

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, Landroidx/appcompat/view/menu/tt0;->h:[F

    aget v2, v4, v2

    aget v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/tt0;->c:[Landroid/graphics/Matrix;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method
