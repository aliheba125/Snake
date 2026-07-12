.class public final Landroidx/appcompat/view/menu/j9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Landroid/content/res/ColorStateList;

.field public final e:I

.field public final f:Landroidx/appcompat/view/menu/st0;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILandroidx/appcompat/view/menu/st0;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/qj0;->d(I)I

    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/qj0;->d(I)I

    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/qj0;->d(I)I

    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/qj0;->d(I)I

    iput-object p6, p0, Landroidx/appcompat/view/menu/j9;->a:Landroid/graphics/Rect;

    iput-object p2, p0, Landroidx/appcompat/view/menu/j9;->b:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroidx/appcompat/view/menu/j9;->c:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Landroidx/appcompat/view/menu/j9;->d:Landroid/content/res/ColorStateList;

    iput p4, p0, Landroidx/appcompat/view/menu/j9;->e:I

    iput-object p5, p0, Landroidx/appcompat/view/menu/j9;->f:Landroidx/appcompat/view/menu/st0;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroidx/appcompat/view/menu/j9;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/qj0;->b(ZLjava/lang/Object;)V

    sget-object v1, Landroidx/appcompat/view/menu/ln0;->D2:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v1, Landroidx/appcompat/view/menu/ln0;->E2:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    sget v2, Landroidx/appcompat/view/menu/ln0;->G2:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    sget v3, Landroidx/appcompat/view/menu/ln0;->F2:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    sget v4, Landroidx/appcompat/view/menu/ln0;->H2:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget v1, Landroidx/appcompat/view/menu/ln0;->I2:I

    invoke-static {p0, p1, v1}, Landroidx/appcompat/view/menu/nb0;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    sget v1, Landroidx/appcompat/view/menu/ln0;->N2:I

    invoke-static {p0, p1, v1}, Landroidx/appcompat/view/menu/nb0;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    sget v1, Landroidx/appcompat/view/menu/ln0;->L2:I

    invoke-static {p0, p1, v1}, Landroidx/appcompat/view/menu/nb0;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    sget v1, Landroidx/appcompat/view/menu/ln0;->M2:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    sget v1, Landroidx/appcompat/view/menu/ln0;->J2:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, Landroidx/appcompat/view/menu/ln0;->K2:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p0, v1, v0}, Landroidx/appcompat/view/menu/st0;->b(Landroid/content/Context;II)Landroidx/appcompat/view/menu/st0$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/st0$b;->m()Landroidx/appcompat/view/menu/st0;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Landroidx/appcompat/view/menu/j9;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Landroidx/appcompat/view/menu/j9;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILandroidx/appcompat/view/menu/st0;Landroid/graphics/Rect;)V

    return-object p0
.end method


# virtual methods
.method public b(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/appcompat/view/menu/j9;->c(Landroid/widget/TextView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public c(Landroid/widget/TextView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 8

    new-instance v0, Landroidx/appcompat/view/menu/ob0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ob0;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/ob0;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/ob0;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/j9;->f:Landroidx/appcompat/view/menu/st0;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ob0;->setShapeAppearanceModel(Landroidx/appcompat/view/menu/st0;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/j9;->f:Landroidx/appcompat/view/menu/st0;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ob0;->setShapeAppearanceModel(Landroidx/appcompat/view/menu/st0;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/j9;->c:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/ob0;->T(Landroid/content/res/ColorStateList;)V

    iget p2, p0, Landroidx/appcompat/view/menu/j9;->e:I

    int-to-float p2, p2

    iget-object v2, p0, Landroidx/appcompat/view/menu/j9;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p2, v2}, Landroidx/appcompat/view/menu/ob0;->Y(FLandroid/content/res/ColorStateList;)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Landroidx/appcompat/view/menu/j9;->b:Landroid/content/res/ColorStateList;

    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object p2, p0, Landroidx/appcompat/view/menu/j9;->b:Landroid/content/res/ColorStateList;

    const/16 p3, 0x1e

    invoke-virtual {p2, p3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-direct {v3, p2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    iget-object p3, p0, Landroidx/appcompat/view/menu/j9;->a:Landroid/graphics/Rect;

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget v7, p3, Landroid/graphics/Rect;->bottom:I

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/m51;->o0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
