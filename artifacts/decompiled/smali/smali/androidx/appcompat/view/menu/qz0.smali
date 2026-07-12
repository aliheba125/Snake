.class public Landroidx/appcompat/view/menu/qz0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:Z

.field public final l:F

.field public m:Landroid/content/res/ColorStateList;

.field public n:F

.field public final o:I

.field public p:Z

.field public q:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/qz0;->p:Z

    sget-object v1, Landroidx/appcompat/view/menu/ln0;->y4:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroidx/appcompat/view/menu/ln0;->z4:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/qz0;->l(F)V

    sget v2, Landroidx/appcompat/view/menu/ln0;->C4:I

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/nb0;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/qz0;->k(Landroid/content/res/ColorStateList;)V

    sget v2, Landroidx/appcompat/view/menu/ln0;->D4:I

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/nb0;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/view/menu/qz0;->a:Landroid/content/res/ColorStateList;

    sget v2, Landroidx/appcompat/view/menu/ln0;->E4:I

    invoke-static {p1, v1, v2}, Landroidx/appcompat/view/menu/nb0;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/view/menu/qz0;->b:Landroid/content/res/ColorStateList;

    sget v2, Landroidx/appcompat/view/menu/ln0;->B4:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/view/menu/qz0;->e:I

    sget v2, Landroidx/appcompat/view/menu/ln0;->A4:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/view/menu/qz0;->f:I

    sget v2, Landroidx/appcompat/view/menu/ln0;->K4:I

    sget v4, Landroidx/appcompat/view/menu/ln0;->J4:I

    invoke-static {v1, v2, v4}, Landroidx/appcompat/view/menu/nb0;->d(Landroid/content/res/TypedArray;II)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/view/menu/qz0;->o:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/view/menu/qz0;->d:Ljava/lang/String;

    sget v2, Landroidx/appcompat/view/menu/ln0;->L4:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/qz0;->g:Z

    sget v0, Landroidx/appcompat/view/menu/ln0;->F4:I

    invoke-static {p1, v1, v0}, Landroidx/appcompat/view/menu/nb0;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/qz0;->c:Landroid/content/res/ColorStateList;

    sget v0, Landroidx/appcompat/view/menu/ln0;->G4:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/qz0;->h:F

    sget v0, Landroidx/appcompat/view/menu/ln0;->H4:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/qz0;->i:F

    sget v0, Landroidx/appcompat/view/menu/ln0;->I4:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/qz0;->j:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Landroidx/appcompat/view/menu/ln0;->X2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroidx/appcompat/view/menu/ln0;->Y2:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/qz0;->k:Z

    sget p2, Landroidx/appcompat/view/menu/ln0;->Y2:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroidx/appcompat/view/menu/qz0;->l:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/qz0;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/qz0;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/qz0;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/qz0;->p:Z

    return p1
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/appcompat/view/menu/qz0;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    iget v0, p0, Landroidx/appcompat/view/menu/qz0;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    iget v1, p0, Landroidx/appcompat/view/menu/qz0;->e:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    :cond_4
    return-void
.end method

.method public e()Landroid/graphics/Typeface;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qz0;->d()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/qz0;->p:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget v0, p0, Landroidx/appcompat/view/menu/qz0;->o:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/fp0;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    if-eqz p1, :cond_1

    iget v0, p0, Landroidx/appcompat/view/menu/qz0;->e:I

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading font "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :catch_1
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qz0;->d()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/qz0;->p:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public g(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/appcompat/view/menu/sz0;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qz0;->e()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/qz0;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    new-instance v0, Landroidx/appcompat/view/menu/qz0$b;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/qz0$b;-><init>(Landroidx/appcompat/view/menu/qz0;Landroid/content/Context;Landroid/text/TextPaint;Landroidx/appcompat/view/menu/sz0;)V

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/qz0;->h(Landroid/content/Context;Landroidx/appcompat/view/menu/sz0;)V

    return-void
.end method

.method public h(Landroid/content/Context;Landroidx/appcompat/view/menu/sz0;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qz0;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qz0;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qz0;->d()V

    :goto_0
    iget v0, p0, Landroidx/appcompat/view/menu/qz0;->o:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/qz0;->p:Z

    :cond_1
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/qz0;->p:Z

    if-eqz v2, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/qz0;->q:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/view/menu/sz0;->b(Landroid/graphics/Typeface;Z)V

    return-void

    :cond_2
    :try_start_0
    new-instance v2, Landroidx/appcompat/view/menu/qz0$a;

    invoke-direct {v2, p0, p2}, Landroidx/appcompat/view/menu/qz0$a;-><init>(Landroidx/appcompat/view/menu/qz0;Landroidx/appcompat/view/menu/sz0;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Landroidx/appcompat/view/menu/fp0;->i(Landroid/content/Context;ILandroidx/appcompat/view/menu/fp0$e;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading font "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/qz0;->p:Z

    const/4 p1, -0x3

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/sz0;->a(I)V

    goto :goto_1

    :catch_1
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/qz0;->p:Z

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/sz0;->a(I)V

    :goto_1
    return-void
.end method

.method public i()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qz0;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qz0;->n:F

    return v0
.end method

.method public k(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qz0;->m:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public l(F)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/qz0;->n:F

    return-void
.end method

.method public final m(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/rz0;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/qz0;->o:I

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/fp0;->c(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public n(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/appcompat/view/menu/sz0;)V
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/qz0;->o(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/appcompat/view/menu/sz0;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/qz0;->m:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget p1, p0, Landroidx/appcompat/view/menu/qz0;->j:F

    iget p3, p0, Landroidx/appcompat/view/menu/qz0;->h:F

    iget v0, p0, Landroidx/appcompat/view/menu/qz0;->i:F

    iget-object v1, p0, Landroidx/appcompat/view/menu/qz0;->c:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public o(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/appcompat/view/menu/sz0;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qz0;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qz0;->f(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/qz0;->p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/qz0;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroidx/appcompat/view/menu/sz0;)V

    :goto_0
    return-void
.end method

.method public p(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-static {p1, p3}, Landroidx/appcompat/view/menu/c31;->a(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p3, p1

    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p1, p0, Landroidx/appcompat/view/menu/qz0;->e:I

    invoke-virtual {p3}, Landroid/graphics/Typeface;->getStyle()I

    move-result p3

    not-int p3, p3

    and-int/2addr p1, p3

    and-int/lit8 p3, p1, 0x1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/high16 p1, -0x41800000    # -0.25f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    iget p1, p0, Landroidx/appcompat/view/menu/qz0;->n:F

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/qz0;->k:Z

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/appcompat/view/menu/qz0;->l:F

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :cond_3
    return-void
.end method
