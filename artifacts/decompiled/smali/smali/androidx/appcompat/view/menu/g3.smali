.class public Landroidx/appcompat/view/menu/g3;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field public static final b:Z


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/appcompat/view/menu/g3;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/g3;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/mn0;->t1:[I

    invoke-static {p1, p2, v0, p3, p4}, Landroidx/appcompat/view/menu/y01;->t(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/view/menu/y01;

    move-result-object p1

    sget p2, Landroidx/appcompat/view/menu/mn0;->v1:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Landroidx/appcompat/view/menu/mn0;->v1:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/y01;->a(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/g3;->b(Z)V

    :cond_0
    sget p2, Landroidx/appcompat/view/menu/mn0;->u1:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/y01;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y01;->v()V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/g3;->b:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/g3;->a:Z

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/jj0;->a(Landroid/widget/PopupWindow;Z)V

    :goto_0
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/g3;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g3;->a:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 1

    sget-boolean v0, Landroidx/appcompat/view/menu/g3;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g3;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 6

    sget-boolean v0, Landroidx/appcompat/view/menu/g3;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/g3;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    :cond_0
    move v3, p3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    return-void
.end method
