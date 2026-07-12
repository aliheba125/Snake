.class public abstract Landroidx/appcompat/view/menu/pn0;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public final x:Ljava/lang/Runnable;

.field public y:I

.field public z:Landroidx/appcompat/view/menu/ob0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/appcompat/view/menu/vm0;->f:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pn0;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/m51;->o0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroidx/appcompat/view/menu/ln0;->z3:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroidx/appcompat/view/menu/ln0;->A3:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/view/menu/pn0;->y:I

    new-instance p2, Landroidx/appcompat/view/menu/on0;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/on0;-><init>(Landroidx/appcompat/view/menu/pn0;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/pn0;->x:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static y(Landroid/view/View;)Z
    .locals 1

    const-string v0, "skip"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/pn0;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/pn0;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/m51;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pn0;->A()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pn0;->z()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pn0;->A()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pn0;->z:Landroidx/appcompat/view/menu/ob0;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ob0;->T(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final t(Ljava/util/List;Landroidx/constraintlayout/widget/d;I)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Landroidx/appcompat/view/menu/sm0;->b:I

    invoke-virtual {p2, v2, v3, p3, v1}, Landroidx/constraintlayout/widget/d;->g(IIIF)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/ob0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ob0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pn0;->z:Landroidx/appcompat/view/menu/ob0;

    new-instance v1, Landroidx/appcompat/view/menu/mo0;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/mo0;-><init>(F)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ob0;->R(Landroidx/appcompat/view/menu/gh;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/pn0;->z:Landroidx/appcompat/view/menu/ob0;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ob0;->T(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/pn0;->z:Landroidx/appcompat/view/menu/ob0;

    return-object v0
.end method

.method public v(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroidx/appcompat/view/menu/pn0;->y:I

    int-to-float p1, p1

    const v0, 0x3f28f5c3    # 0.66f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/pn0;->y:I

    :goto_0
    return p1
.end method

.method public w()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/pn0;->y:I

    return v0
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/pn0;->y:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pn0;->z()V

    return-void
.end method

.method public z()V
    .locals 6

    new-instance v0, Landroidx/constraintlayout/widget/d;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/d;->f(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Landroidx/appcompat/view/menu/sm0;->b:I

    if-eq v4, v5, :cond_3

    invoke-static {v3}, Landroidx/appcompat/view/menu/pn0;->y(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    sget v4, Landroidx/appcompat/view/menu/sm0;->i:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/pn0;->v(I)I

    move-result v2

    invoke-virtual {p0, v3, v0, v2}, Landroidx/appcompat/view/menu/pn0;->t(Ljava/util/List;Landroidx/constraintlayout/widget/d;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
