.class public final Landroidx/appcompat/view/menu/lc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t0:Z

.field public static final u0:Landroid/graphics/Paint;


# instance fields
.field public A:Landroid/graphics/Typeface;

.field public B:Landroid/graphics/Typeface;

.field public C:Landroid/graphics/Typeface;

.field public D:Landroidx/appcompat/view/menu/v9;

.field public E:Landroidx/appcompat/view/menu/v9;

.field public F:Landroid/text/TextUtils$TruncateAt;

.field public G:Ljava/lang/CharSequence;

.field public H:Ljava/lang/CharSequence;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Landroid/graphics/Bitmap;

.field public M:Landroid/graphics/Paint;

.field public N:F

.field public O:F

.field public P:F

.field public Q:F

.field public R:F

.field public S:I

.field public T:[I

.field public U:Z

.field public final V:Landroid/text/TextPaint;

.field public final W:Landroid/text/TextPaint;

.field public X:Landroid/animation/TimeInterpolator;

.field public Y:Landroid/animation/TimeInterpolator;

.field public Z:F

.field public final a:Landroid/view/View;

.field public a0:F

.field public b:F

.field public b0:F

.field public c:Z

.field public c0:Landroid/content/res/ColorStateList;

.field public d:F

.field public d0:F

.field public e:F

.field public e0:F

.field public f:I

.field public f0:F

.field public final g:Landroid/graphics/Rect;

.field public g0:Landroid/content/res/ColorStateList;

.field public final h:Landroid/graphics/Rect;

.field public h0:F

.field public final i:Landroid/graphics/RectF;

.field public i0:F

.field public j:I

.field public j0:F

.field public k:I

.field public k0:Landroid/text/StaticLayout;

.field public l:F

.field public l0:F

.field public m:F

.field public m0:F

.field public n:Landroid/content/res/ColorStateList;

.field public n0:F

.field public o:Landroid/content/res/ColorStateList;

.field public o0:Ljava/lang/CharSequence;

.field public p:I

.field public p0:I

.field public q:F

.field public q0:F

.field public r:F

.field public r0:F

.field public s:F

.field public s0:I

.field public t:F

.field public u:F

.field public v:F

.field public w:Landroid/graphics/Typeface;

.field public x:Landroid/graphics/Typeface;

.field public y:Landroid/graphics/Typeface;

.field public z:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/appcompat/view/menu/lc;->t0:Z

    const/4 v0, 0x0

    sput-object v0, Landroidx/appcompat/view/menu/lc;->u0:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->j:I

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->k:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->l:F

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->m:F

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Landroidx/appcompat/view/menu/lc;->F:Landroid/text/TextUtils$TruncateAt;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/lc;->J:Z

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->p0:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->q0:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->r0:F

    sget v0, Landroidx/appcompat/view/menu/zw0;->n:I

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->s0:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/lc;->W:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/lc;->i:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->e()F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->e:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->H(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static C(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3727c5ac    # 1.0E-5f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static G(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/j2;->a(FFF)F

    move-result p0

    return p0
.end method

.method public static L(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->l:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->z:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->i0:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    return-void
.end method

.method public final B(F)V
    .locals 4

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/lc;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->i:Landroid/graphics/RectF;

    iget v1, p0, Landroidx/appcompat/view/menu/lc;->e:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->X:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->i:Landroid/graphics/RectF;

    iget v1, p0, Landroidx/appcompat/view/menu/lc;->q:F

    iget v2, p0, Landroidx/appcompat/view/menu/lc;->r:F

    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->X:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->X:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->X:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :goto_1
    return-void
.end method

.method public final D()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/appcompat/view/menu/m51;->x(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final E()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->o:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->n:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final F(Ljava/lang/CharSequence;Z)Z
    .locals 2

    if-eqz p2, :cond_0

    sget-object p2, Landroidx/appcompat/view/menu/uz0;->d:Landroidx/appcompat/view/menu/tz0;

    goto :goto_0

    :cond_0
    sget-object p2, Landroidx/appcompat/view/menu/uz0;->c:Landroidx/appcompat/view/menu/tz0;

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroidx/appcompat/view/menu/tz0;->a(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method public H(Landroid/content/res/Configuration;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->y:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/c31;->b(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/lc;->x:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->B:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/c31;->b(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->A:Landroid/graphics/Typeface;

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->x:Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->y:Landroid/graphics/Typeface;

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->w:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->A:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->B:Landroid/graphics/Typeface;

    :goto_1
    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->z:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->K(Z)V

    :cond_4
    return-void
.end method

.method public final I(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F
    .locals 2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    return p1
.end method

.method public J()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/lc;->K(Z)V

    return-void
.end method

.method public K(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->b(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->c()V

    :cond_2
    return-void
.end method

.method public M(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->o:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->o:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    :cond_1
    return-void
.end method

.method public N(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/lc;->L(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/lc;->U:Z

    :cond_0
    return-void
.end method

.method public O(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/appcompat/view/menu/lc;->N(IIII)V

    return-void
.end method

.method public P(I)V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/qz0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/qz0;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qz0;->i()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qz0;->i()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->o:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qz0;->j()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qz0;->j()F

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->m:F

    :cond_1
    iget-object p1, v0, Landroidx/appcompat/view/menu/qz0;->c:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->c0:Landroid/content/res/ColorStateList;

    :cond_2
    iget p1, v0, Landroidx/appcompat/view/menu/qz0;->h:F

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->a0:F

    iget p1, v0, Landroidx/appcompat/view/menu/qz0;->i:F

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->b0:F

    iget p1, v0, Landroidx/appcompat/view/menu/qz0;->j:F

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->Z:F

    iget p1, v0, Landroidx/appcompat/view/menu/qz0;->l:F

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->h0:F

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->E:Landroidx/appcompat/view/menu/v9;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/v9;->c()V

    :cond_3
    new-instance p1, Landroidx/appcompat/view/menu/v9;

    new-instance v1, Landroidx/appcompat/view/menu/lc$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/lc$a;-><init>(Landroidx/appcompat/view/menu/lc;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qz0;->e()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroidx/appcompat/view/menu/v9;-><init>(Landroidx/appcompat/view/menu/v9$a;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->E:Landroidx/appcompat/view/menu/v9;

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->E:Landroidx/appcompat/view/menu/v9;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/qz0;->h(Landroid/content/Context;Landroidx/appcompat/view/menu/sz0;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    return-void
.end method

.method public final Q(F)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->m0:F

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/appcompat/view/menu/m51;->b0(Landroid/view/View;)V

    return-void
.end method

.method public R(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->o:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    :cond_0
    return-void
.end method

.method public S(I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->k:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->k:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    :cond_0
    return-void
.end method

.method public T(Landroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->U(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    :cond_0
    return-void
.end method

.method public final U(Landroid/graphics/Typeface;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->E:Landroidx/appcompat/view/menu/v9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/v9;->c()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->y:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->y:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/c31;->b(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->x:Landroid/graphics/Typeface;

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->y:Landroid/graphics/Typeface;

    :cond_1
    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->w:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public V(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/lc;->L(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/lc;->U:Z

    :cond_0
    return-void
.end method

.method public W(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/appcompat/view/menu/lc;->V(IIII)V

    return-void
.end method

.method public X(F)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->i0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->i0:F

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    :cond_0
    return-void
.end method

.method public final Y(F)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->n0:F

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/appcompat/view/menu/m51;->b0(Landroid/view/View;)V

    return-void
.end method

.method public Z(I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->j:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->j:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    :cond_0
    return-void
.end method

.method public a0(F)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->l:F

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/lc;->i(FZ)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->H:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->F:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v1, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/lc;->o0:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->o0:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/view/menu/lc;->I(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->l0:F

    goto :goto_0

    :cond_1
    iput v1, p0, Landroidx/appcompat/view/menu/lc;->l0:F

    :goto_0
    iget v0, p0, Landroidx/appcompat/view/menu/lc;->k:I

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/hy;->b(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x70

    const/16 v3, 0x50

    const/16 v4, 0x30

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v6, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v2, v6

    div-float/2addr v2, v5

    iget-object v6, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iput v6, p0, Landroidx/appcompat/view/menu/lc;->r:F

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v6, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    add-float/2addr v2, v6

    iput v2, p0, Landroidx/appcompat/view/menu/lc;->r:F

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p0, Landroidx/appcompat/view/menu/lc;->r:F

    :goto_1
    const v2, 0x800007

    and-int/2addr v0, v2

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->t:F

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v8, p0, Landroidx/appcompat/view/menu/lc;->l0:F

    sub-float/2addr v0, v8

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->t:F

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v8, p0, Landroidx/appcompat/view/menu/lc;->l0:F

    div-float/2addr v8, v5

    sub-float/2addr v0, v8

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->t:F

    :goto_2
    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/view/menu/lc;->i(FZ)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    if-eqz v0, :cond_7

    iget v8, p0, Landroidx/appcompat/view/menu/lc;->p0:I

    if-le v8, v7, :cond_7

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v1, v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->H:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/lc;->I(Landroid/text/TextPaint;Ljava/lang/CharSequence;)F

    move-result v1

    :cond_8
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    iput v0, p0, Landroidx/appcompat/view/menu/lc;->p:I

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->j:I

    iget-boolean v8, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    invoke-static {v0, v8}, Landroidx/appcompat/view/menu/hy;->b(II)I

    move-result v0

    and-int/lit8 v8, v0, 0x70

    if-eq v8, v4, :cond_b

    if-eq v8, v3, :cond_a

    div-float/2addr p1, v5

    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iput v3, p0, Landroidx/appcompat/view/menu/lc;->q:F

    goto :goto_6

    :cond_a
    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    add-float/2addr v3, p1

    iput v3, p0, Landroidx/appcompat/view/menu/lc;->q:F

    goto :goto_6

    :cond_b
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->q:F

    :goto_6
    and-int p1, v0, v2

    if-eq p1, v7, :cond_d

    if-eq p1, v6, :cond_c

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->s:F

    goto :goto_7

    :cond_c
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->s:F

    goto :goto_7

    :cond_d
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, v5

    sub-float/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->s:F

    :goto_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->j()V

    iget p1, p0, Landroidx/appcompat/view/menu/lc;->b:F

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->d0(F)V

    return-void
.end method

.method public final b0(Landroid/graphics/Typeface;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->D:Landroidx/appcompat/view/menu/v9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/v9;->c()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->B:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->B:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/c31;->b(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->A:Landroid/graphics/Typeface;

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->B:Landroid/graphics/Typeface;

    :cond_1
    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->z:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->b:F

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/lc;->g(F)V

    return-void
.end method

.method public c0(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/ub0;->a(FFF)F

    move-result p1

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->b:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->b:F

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->c()V

    :cond_0
    return-void
.end method

.method public final d(F)F
    .locals 4

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->e:F

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v1, :cond_0

    iget v1, p0, Landroidx/appcompat/view/menu/lc;->d:F

    invoke-static {v3, v2, v1, v0, p1}, Landroidx/appcompat/view/menu/j2;->b(FFFFF)F

    move-result p1

    return p1

    :cond_0
    invoke-static {v2, v3, v0, v3, p1}, Landroidx/appcompat/view/menu/j2;->b(FFFFF)F

    move-result p1

    return p1
.end method

.method public final d0(F)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->h(F)V

    sget-boolean p1, Landroidx/appcompat/view/menu/lc;->t0:Z

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/appcompat/view/menu/lc;->N:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/lc;->K:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->n()V

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/appcompat/view/menu/m51;->b0(Landroid/view/View;)V

    return-void
.end method

.method public final e()F
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public e0(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->X:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    return-void
.end method

.method public final f(Ljava/lang/CharSequence;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->D()Z

    move-result v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/lc;->J:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/lc;->F(Ljava/lang/CharSequence;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final f0([I)Z
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->T:[I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->E()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(F)V
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->B(F)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/lc;->c:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->e:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->s:F

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->u:F

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->q:F

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->v:F

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/lc;->d0(F)V

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/lc;->t:F

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->u:F

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->r:F

    const/4 v3, 0x0

    iget v4, p0, Landroidx/appcompat/view/menu/lc;->f:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->v:F

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/lc;->d0(F)V

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/appcompat/view/menu/lc;->s:F

    iget v3, p0, Landroidx/appcompat/view/menu/lc;->t:F

    iget-object v4, p0, Landroidx/appcompat/view/menu/lc;->X:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->u:F

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->q:F

    iget v3, p0, Landroidx/appcompat/view/menu/lc;->r:F

    iget-object v4, p0, Landroidx/appcompat/view/menu/lc;->X:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->v:F

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->d0(F)V

    move v0, p1

    :goto_0
    sub-float v3, v2, p1

    sget-object v4, Landroidx/appcompat/view/menu/j2;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, v3, v4}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    sub-float v3, v2, v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/lc;->Q(F)V

    invoke-static {v2, v1, p1, v4}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/lc;->Y(F)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->o:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->n:Landroid/content/res/ColorStateList;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->v()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->t()I

    move-result v3

    invoke-static {v2, v3, v0}, Landroidx/appcompat/view/menu/lc;->a(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget v0, p0, Landroidx/appcompat/view/menu/lc;->h0:F

    iget v1, p0, Landroidx/appcompat/view/menu/lc;->i0:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-static {v1, v0, p1, v4}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :goto_2
    iget v0, p0, Landroidx/appcompat/view/menu/lc;->d0:F

    iget v1, p0, Landroidx/appcompat/view/menu/lc;->Z:F

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->P:F

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->e0:F

    iget v1, p0, Landroidx/appcompat/view/menu/lc;->a0:F

    invoke-static {v0, v1, p1, v2}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->Q:F

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->f0:F

    iget v1, p0, Landroidx/appcompat/view/menu/lc;->b0:F

    invoke-static {v0, v1, p1, v2}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->R:F

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->g0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/lc;->u(Landroid/content/res/ColorStateList;)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->c0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/lc;->u(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/lc;->a(IIF)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/lc;->S:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget v2, p0, Landroidx/appcompat/view/menu/lc;->P:F

    iget v3, p0, Landroidx/appcompat/view/menu/lc;->Q:F

    iget v4, p0, Landroidx/appcompat/view/menu/lc;->R:F

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/lc;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->d(F)F

    move-result p1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/appcompat/view/menu/m51;->b0(Landroid/view/View;)V

    return-void
.end method

.method public g0(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->G:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->G:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->H:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->j()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    :cond_1
    return-void
.end method

.method public final h(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/lc;->i(FZ)V

    return-void
.end method

.method public h0(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->Y:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    return-void
.end method

.method public final i(FZ)V
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->G:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/lc;->C(FF)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget p1, p0, Landroidx/appcompat/view/menu/lc;->m:F

    iget p2, p0, Landroidx/appcompat/view/menu/lc;->h0:F

    iput v2, p0, Landroidx/appcompat/view/menu/lc;->N:F

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->w:Landroid/graphics/Typeface;

    goto :goto_3

    :cond_1
    iget v3, p0, Landroidx/appcompat/view/menu/lc;->l:F

    iget v5, p0, Landroidx/appcompat/view/menu/lc;->i0:F

    iget-object v6, p0, Landroidx/appcompat/view/menu/lc;->z:Landroid/graphics/Typeface;

    invoke-static {p1, v4}, Landroidx/appcompat/view/menu/lc;->C(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v2, p0, Landroidx/appcompat/view/menu/lc;->N:F

    goto :goto_0

    :cond_2
    iget v7, p0, Landroidx/appcompat/view/menu/lc;->l:F

    iget v8, p0, Landroidx/appcompat/view/menu/lc;->m:F

    iget-object v9, p0, Landroidx/appcompat/view/menu/lc;->Y:Landroid/animation/TimeInterpolator;

    invoke-static {v7, v8, p1, v9}, Landroidx/appcompat/view/menu/lc;->G(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iget v7, p0, Landroidx/appcompat/view/menu/lc;->l:F

    div-float/2addr p1, v7

    iput p1, p0, Landroidx/appcompat/view/menu/lc;->N:F

    :goto_0
    iget p1, p0, Landroidx/appcompat/view/menu/lc;->m:F

    iget v7, p0, Landroidx/appcompat/view/menu/lc;->l:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    if-nez p2, :cond_4

    iget-boolean p2, p0, Landroidx/appcompat/view/menu/lc;->c:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    cmpl-float p2, v7, v0

    if-lez p2, :cond_4

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    :goto_1
    move p1, v3

    move p2, v5

    move-object v1, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v1

    goto :goto_1

    :goto_3
    cmpl-float v3, v0, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_c

    iget v3, p0, Landroidx/appcompat/view/menu/lc;->O:F

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_4

    :cond_5
    move v3, v5

    :goto_4
    iget v6, p0, Landroidx/appcompat/view/menu/lc;->j0:F

    cmpl-float v6, v6, p2

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_5

    :cond_6
    move v6, v5

    :goto_5
    iget-object v7, p0, Landroidx/appcompat/view/menu/lc;->C:Landroid/graphics/Typeface;

    if-eq v7, v1, :cond_7

    move v7, v4

    goto :goto_6

    :cond_7
    move v7, v5

    :goto_6
    iget-object v8, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-eqz v8, :cond_8

    move v8, v4

    goto :goto_7

    :cond_8
    move v8, v5

    :goto_7
    if-nez v3, :cond_a

    if-nez v6, :cond_a

    if-nez v8, :cond_a

    if-nez v7, :cond_a

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/lc;->U:Z

    if-eqz v3, :cond_9

    goto :goto_8

    :cond_9
    move v3, v5

    goto :goto_9

    :cond_a
    :goto_8
    move v3, v4

    :goto_9
    iput p1, p0, Landroidx/appcompat/view/menu/lc;->O:F

    iput p2, p0, Landroidx/appcompat/view/menu/lc;->j0:F

    iput-object v1, p0, Landroidx/appcompat/view/menu/lc;->C:Landroid/graphics/Typeface;

    iput-boolean v5, p0, Landroidx/appcompat/view/menu/lc;->U:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget p2, p0, Landroidx/appcompat/view/menu/lc;->N:F

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_b

    move v5, v4

    :cond_b
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setLinearText(Z)V

    move v5, v3

    :cond_c
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->H:Ljava/lang/CharSequence;

    if-eqz p1, :cond_d

    if-eqz v5, :cond_f

    :cond_d
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget p2, p0, Landroidx/appcompat/view/menu/lc;->O:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget-object p2, p0, Landroidx/appcompat/view/menu/lc;->C:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget p2, p0, Landroidx/appcompat/view/menu/lc;->j0:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->G:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->f(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->j0()Z

    move-result p1

    if-eqz p1, :cond_e

    iget v4, p0, Landroidx/appcompat/view/menu/lc;->p0:I

    :cond_e
    iget-boolean p1, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    invoke-virtual {p0, v4, v0, p1}, Landroidx/appcompat/view/menu/lc;->k(IFZ)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/lc;->H:Ljava/lang/CharSequence;

    :cond_f
    return-void
.end method

.method public i0(Landroid/graphics/Typeface;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->U(Landroid/graphics/Typeface;)Z

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lc;->b0(Landroid/graphics/Typeface;)Z

    move-result p1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->J()V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->L:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/lc;->L:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public final j0()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->p0:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/lc;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/lc;->K:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final k(IFZ)Landroid/text/StaticLayout;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->y()Landroid/text/Layout$Alignment;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->G:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    float-to-int p2, p2

    invoke-static {v2, v3, p2}, Landroidx/appcompat/view/menu/zw0;->b(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroidx/appcompat/view/menu/zw0;

    move-result-object p2

    iget-object v2, p0, Landroidx/appcompat/view/menu/lc;->F:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v2}, Landroidx/appcompat/view/menu/zw0;->d(Landroid/text/TextUtils$TruncateAt;)Landroidx/appcompat/view/menu/zw0;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/zw0;->g(Z)Landroidx/appcompat/view/menu/zw0;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/zw0;->c(Landroid/text/Layout$Alignment;)Landroidx/appcompat/view/menu/zw0;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/zw0;->f(Z)Landroidx/appcompat/view/menu/zw0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/zw0;->i(I)Landroidx/appcompat/view/menu/zw0;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/view/menu/lc;->q0:F

    iget p3, p0, Landroidx/appcompat/view/menu/lc;->r0:F

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/zw0;->h(FF)Landroidx/appcompat/view/menu/zw0;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/view/menu/lc;->s0:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/zw0;->e(I)Landroidx/appcompat/view/menu/zw0;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/zw0;->j(Landroidx/appcompat/view/menu/ax0;)Landroidx/appcompat/view/menu/zw0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zw0;->a()Landroid/text/StaticLayout;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/qj0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/StaticLayout;

    return-object p1
.end method

.method public l(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->H:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->i:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget v2, p0, Landroidx/appcompat/view/menu/lc;->O:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v1, p0, Landroidx/appcompat/view/menu/lc;->u:F

    iget v2, p0, Landroidx/appcompat/view/menu/lc;->v:F

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/lc;->K:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->L:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget v5, p0, Landroidx/appcompat/view/menu/lc;->N:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/lc;->c:Z

    if-nez v6, :cond_1

    invoke-virtual {p1, v5, v5, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->L:Landroid/graphics/Bitmap;

    iget-object v4, p0, Landroidx/appcompat/view/menu/lc;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->j0()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/lc;->c:Z

    if-eqz v3, :cond_3

    iget v3, p0, Landroidx/appcompat/view/menu/lc;->b:F

    iget v5, p0, Landroidx/appcompat/view/menu/lc;->e:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    :cond_3
    iget v1, p0, Landroidx/appcompat/view/menu/lc;->u:F

    iget-object v3, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroidx/appcompat/view/menu/lc;->m(Landroid/graphics/Canvas;FF)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    return-void
.end method

.method public final m(Landroid/graphics/Canvas;FF)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v2, v0, Landroidx/appcompat/view/menu/lc;->c:Z

    const/16 v3, 0x1f

    if-nez v2, :cond_1

    iget-object v2, v0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget v4, v0, Landroidx/appcompat/view/menu/lc;->n0:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    iget-object v2, v0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget v4, v0, Landroidx/appcompat/view/menu/lc;->P:F

    iget v5, v0, Landroidx/appcompat/view/menu/lc;->Q:F

    iget v6, v0, Landroidx/appcompat/view/menu/lc;->R:F

    iget v7, v0, Landroidx/appcompat/view/menu/lc;->S:I

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    invoke-static {v7, v8}, Landroidx/appcompat/view/menu/lb0;->a(II)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v2, v0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    move-object v11, p1

    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    move-object v11, p1

    :goto_0
    iget-boolean v2, v0, Landroidx/appcompat/view/menu/lc;->c:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget v4, v0, Landroidx/appcompat/view/menu/lc;->m0:F

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    iget-object v4, v0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget v5, v0, Landroidx/appcompat/view/menu/lc;->P:F

    iget v6, v0, Landroidx/appcompat/view/menu/lc;->Q:F

    iget v7, v0, Landroidx/appcompat/view/menu/lc;->R:F

    iget v8, v0, Landroidx/appcompat/view/menu/lc;->S:I

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    invoke-static {v8, v9}, Landroidx/appcompat/view/menu/lb0;->a(II)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_3
    iget-object v4, v0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v4

    iget-object v5, v0, Landroidx/appcompat/view/menu/lc;->o0:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x0

    int-to-float v13, v4

    iget-object v10, v0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    move-object v4, p1

    move v9, v13

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-lt v2, v3, :cond_4

    iget-object v2, v0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    iget v3, v0, Landroidx/appcompat/view/menu/lc;->P:F

    iget v4, v0, Landroidx/appcompat/view/menu/lc;->Q:F

    iget v5, v0, Landroidx/appcompat/view/menu/lc;->R:F

    iget v6, v0, Landroidx/appcompat/view/menu/lc;->S:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_4
    iget-boolean v2, v0, Landroidx/appcompat/view/menu/lc;->c:Z

    if-nez v2, :cond_6

    iget-object v2, v0, Landroidx/appcompat/view/menu/lc;->o0:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object v5, v2

    iget-object v2, v0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v6, 0x0

    iget-object v1, v0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    iget-object v10, v0, Landroidx/appcompat/view/menu/lc;->V:Landroid/text/TextPaint;

    move-object v4, p1

    move v9, v13

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->L:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->H:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/lc;->g(F)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/lc;->L:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->L:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->k0:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->M:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/lc;->M:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method public o(Landroid/graphics/RectF;II)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->G:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/lc;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/view/menu/lc;->r(II)F

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/lc;->s(Landroid/graphics/RectF;II)F

    move-result p2

    iget-object p3, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/lc;->q()F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public p()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public q()F
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->W:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/lc;->z(Landroid/text/TextPaint;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->W:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public final r(II)F
    .locals 2

    const/16 v0, 0x11

    if-eq p2, v0, :cond_5

    and-int/lit8 v0, p2, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const p1, 0x800005

    and-int v0, p2, p1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x5

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget p2, p0, Landroidx/appcompat/view/menu/lc;->l0:F

    sub-float/2addr p1, p2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    :goto_0
    return p1

    :cond_3
    :goto_1
    iget-boolean p1, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget p2, p0, Landroidx/appcompat/view/menu/lc;->l0:F

    sub-float/2addr p1, p2

    :goto_2
    return p1

    :cond_5
    :goto_3
    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->l0:F

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    return p1
.end method

.method public final s(Landroid/graphics/RectF;II)F
    .locals 2

    const/16 v0, 0x11

    if-eq p3, v0, :cond_5

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const p2, 0x800005

    and-int v0, p3, p2

    if-eq v0, p2, :cond_3

    const/4 p2, 0x5

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p2, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p2, p0, Landroidx/appcompat/view/menu/lc;->l0:F

    add-float/2addr p1, p2

    :goto_0
    return p1

    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    if-eqz p2, :cond_4

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p2, p0, Landroidx/appcompat/view/menu/lc;->l0:F

    add-float/2addr p1, p2

    goto :goto_2

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/lc;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    :goto_2
    return p1

    :cond_5
    :goto_3
    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget p3, p0, Landroidx/appcompat/view/menu/lc;->l0:F

    div-float/2addr p3, p2

    add-float/2addr p1, p3

    return p1
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/lc;->u(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public final u(Landroid/content/res/ColorStateList;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/lc;->T:[I

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/lc;->u(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public w()F
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->W:Landroid/text/TextPaint;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/lc;->A(Landroid/text/TextPaint;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->W:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->b:F

    return v0
.end method

.method public final y()Landroid/text/Layout$Alignment;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->j:I

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/hy;->b(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/lc;->I:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_1
    return-object v0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final z(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->m:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/lc;->w:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Landroidx/appcompat/view/menu/lc;->h0:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    return-void
.end method
