.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$f;,
        Landroidx/appcompat/widget/Toolbar$g;,
        Landroidx/appcompat/widget/Toolbar$h;,
        Landroidx/appcompat/widget/Toolbar$i;,
        Landroidx/appcompat/widget/Toolbar$e;
    }
.end annotation


# instance fields
.field public A:Landroid/content/res/ColorStateList;

.field public B:Z

.field public C:Z

.field public final D:Ljava/util/ArrayList;

.field public final E:Ljava/util/ArrayList;

.field public final F:[I

.field public final G:Landroidx/appcompat/view/menu/nc0;

.field public H:Ljava/util/ArrayList;

.field public final I:Landroidx/appcompat/widget/ActionMenuView$e;

.field public J:Landroidx/appcompat/widget/d;

.field public K:Landroidx/appcompat/widget/a;

.field public L:Landroidx/appcompat/widget/Toolbar$f;

.field public M:Landroidx/appcompat/view/menu/uc0$a;

.field public N:Landroidx/appcompat/view/menu/mc0$a;

.field public O:Z

.field public P:Landroid/window/OnBackInvokedCallback;

.field public Q:Landroid/window/OnBackInvokedDispatcher;

.field public R:Z

.field public final S:Ljava/lang/Runnable;

.field public a:Landroidx/appcompat/widget/ActionMenuView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageButton;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Ljava/lang/CharSequence;

.field public h:Landroid/widget/ImageButton;

.field public i:Landroid/view/View;

.field public j:Landroid/content/Context;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Landroidx/appcompat/view/menu/yp0;

.field public u:I

.field public v:I

.field public w:I

.field public x:Ljava/lang/CharSequence;

.field public y:Ljava/lang/CharSequence;

.field public z:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/am0;->r:I

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x800013

    iput v0, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:[I

    .line 5
    new-instance v0, Landroidx/appcompat/view/menu/nc0;

    new-instance v1, Landroidx/appcompat/view/menu/b11;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/b11;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/nc0;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->G:Landroidx/appcompat/view/menu/nc0;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Landroidx/appcompat/widget/Toolbar$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$a;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/ActionMenuView$e;

    .line 8
    new-instance v0, Landroidx/appcompat/widget/Toolbar$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$b;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->S:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/mn0;->N1:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/view/menu/y01;->t(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/view/menu/y01;

    move-result-object v0

    .line 10
    sget-object v5, Landroidx/appcompat/view/menu/mn0;->N1:[I

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y01;->p()Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    .line 12
    invoke-static/range {v3 .. v9}, Landroidx/appcompat/view/menu/m51;->i0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 13
    sget p1, Landroidx/appcompat/view/menu/mn0;->p2:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/y01;->m(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->l:I

    .line 14
    sget p1, Landroidx/appcompat/view/menu/mn0;->g2:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/y01;->m(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    .line 15
    sget p1, Landroidx/appcompat/view/menu/mn0;->O1:I

    iget p2, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y01;->k(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    .line 16
    sget p1, Landroidx/appcompat/view/menu/mn0;->P1:I

    const/16 p2, 0x30

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y01;->k(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    .line 17
    sget p1, Landroidx/appcompat/view/menu/mn0;->j2:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/y01;->e(II)I

    move-result p1

    .line 18
    sget p2, Landroidx/appcompat/view/menu/mn0;->o2:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 19
    sget p2, Landroidx/appcompat/view/menu/mn0;->o2:I

    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/view/menu/y01;->e(II)I

    move-result p1

    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    .line 20
    sget p1, Landroidx/appcompat/view/menu/mn0;->m2:I

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y01;->e(II)I

    move-result p1

    if-ltz p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    .line 21
    :cond_1
    sget p1, Landroidx/appcompat/view/menu/mn0;->l2:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y01;->e(II)I

    move-result p1

    if-ltz p1, :cond_2

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    .line 22
    :cond_2
    sget p1, Landroidx/appcompat/view/menu/mn0;->n2:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y01;->e(II)I

    move-result p1

    if-ltz p1, :cond_3

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    .line 23
    :cond_3
    sget p1, Landroidx/appcompat/view/menu/mn0;->k2:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y01;->e(II)I

    move-result p1

    if-ltz p1, :cond_4

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    .line 24
    :cond_4
    sget p1, Landroidx/appcompat/view/menu/mn0;->a2:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y01;->f(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    .line 25
    sget p1, Landroidx/appcompat/view/menu/mn0;->W1:I

    const/high16 p2, -0x80000000

    .line 26
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y01;->e(II)I

    move-result p1

    .line 27
    sget p3, Landroidx/appcompat/view/menu/mn0;->S1:I

    .line 28
    invoke-virtual {v0, p3, p2}, Landroidx/appcompat/view/menu/y01;->e(II)I

    move-result p3

    .line 29
    sget v1, Landroidx/appcompat/view/menu/mn0;->U1:I

    .line 30
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/y01;->f(II)I

    move-result v1

    .line 31
    sget v3, Landroidx/appcompat/view/menu/mn0;->V1:I

    .line 32
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/y01;->f(II)I

    move-result v3

    .line 33
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->f()V

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/view/menu/yp0;

    .line 34
    invoke-virtual {v4, v1, v3}, Landroidx/appcompat/view/menu/yp0;->e(II)V

    if-ne p1, p2, :cond_5

    if-eq p3, p2, :cond_6

    :cond_5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/view/menu/yp0;

    .line 35
    invoke-virtual {v1, p1, p3}, Landroidx/appcompat/view/menu/yp0;->g(II)V

    .line 36
    :cond_6
    sget p1, Landroidx/appcompat/view/menu/mn0;->X1:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y01;->e(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    .line 37
    sget p1, Landroidx/appcompat/view/menu/mn0;->T1:I

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/y01;->e(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    .line 38
    sget p1, Landroidx/appcompat/view/menu/mn0;->R1:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/graphics/drawable/Drawable;

    .line 39
    sget p1, Landroidx/appcompat/view/menu/mn0;->Q1:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->o(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->g:Ljava/lang/CharSequence;

    .line 40
    sget p1, Landroidx/appcompat/view/menu/mn0;->i2:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->o(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    :cond_7
    sget p1, Landroidx/appcompat/view/menu/mn0;->f2:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->o(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 46
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    .line 47
    sget p1, Landroidx/appcompat/view/menu/mn0;->e2:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/y01;->m(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 48
    sget p1, Landroidx/appcompat/view/menu/mn0;->d2:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_9
    sget p1, Landroidx/appcompat/view/menu/mn0;->c2:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->o(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    :cond_a
    sget p1, Landroidx/appcompat/view/menu/mn0;->Y1:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 54
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_b
    sget p1, Landroidx/appcompat/view/menu/mn0;->Z1:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->o(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 58
    :cond_c
    sget p1, Landroidx/appcompat/view/menu/mn0;->q2:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 59
    sget p1, Landroidx/appcompat/view/menu/mn0;->q2:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    :cond_d
    sget p1, Landroidx/appcompat/view/menu/mn0;->h2:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 61
    sget p1, Landroidx/appcompat/view/menu/mn0;->h2:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_e
    sget p1, Landroidx/appcompat/view/menu/mn0;->b2:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 63
    sget p1, Landroidx/appcompat/view/menu/mn0;->b2:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/y01;->m(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->u(I)V

    .line 64
    :cond_f
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y01;->v()V

    return-void
.end method

.method private getCurrentMenuItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/iy0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/iy0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final A(Landroid/view/View;IIII[I)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p6

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p6

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v5

    return p1
.end method

.method public final B(Landroid/view/View;IIIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 p5, 0x40000000    # 2.0f

    if-eq p4, p5, :cond_1

    if-ltz p6, :cond_1

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    :cond_0
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final C()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->G:Landroidx/appcompat/view/menu/nc0;

    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroidx/appcompat/view/menu/nc0;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentMenuItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    return-void
.end method

.method public final D()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public E()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$g;

    iget v2, v2, Landroidx/appcompat/widget/Toolbar$g;->b:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public F(II)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->f()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/view/menu/yp0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/yp0;->g(II)V

    return-void
.end method

.method public G(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public H(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->l:I

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final I()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final J(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    invoke-static {p0}, Landroidx/appcompat/widget/Toolbar$e;->a(Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->R:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->Q:Landroid/window/OnBackInvokedDispatcher;

    if-nez v2, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroid/window/OnBackInvokedCallback;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/appcompat/view/menu/c11;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/c11;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-static {v1}, Landroidx/appcompat/widget/Toolbar$e;->b(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroid/window/OnBackInvokedCallback;

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/Toolbar$e;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->Q:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->Q:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->P:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Landroidx/appcompat/widget/Toolbar$e;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->Q:Landroid/window/OnBackInvokedDispatcher;

    :cond_3
    :goto_1
    return-void
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final b(Ljava/util/List;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-static {p2, v4}, Landroidx/appcompat/view/menu/hy;->b(II)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$g;

    iget v2, v1, Landroidx/appcompat/widget/Toolbar$g;->b:I

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Landroidx/appcompat/view/menu/u0;->a:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->n(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$g;

    iget v4, v2, Landroidx/appcompat/widget/Toolbar$g;->b:I

    if-nez v4, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Landroidx/appcompat/view/menu/u0;->a:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->n(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final c(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->k()Landroidx/appcompat/widget/Toolbar$g;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->m(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$g;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Landroidx/appcompat/widget/Toolbar$g;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/qc0;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qc0;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/d3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/view/menu/am0;->q:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/d3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->k()Landroidx/appcompat/widget/Toolbar$g;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/view/menu/u0;->a:I

    const/4 v1, 0x2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$d;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/view/menu/yp0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/yp0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/yp0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/view/menu/yp0;

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/f3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/f3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->k()Landroidx/appcompat/widget/Toolbar$g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->l(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->m(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$g;

    move-result-object p1

    return-object p1
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/view/menu/yp0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yp0;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/view/menu/yp0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yp0;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/view/menu/yp0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yp0;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/view/menu/yp0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yp0;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->I()Landroidx/appcompat/view/menu/mc0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mc0;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->h()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavButtonView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOuterActionMenuPresenter()Landroidx/appcompat/widget/a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/a;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->h()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->k:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSubtitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->x:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    return v0
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWrapper()Landroidx/appcompat/view/menu/jj;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/d;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/d;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/d;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/d;

    return-object v0
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->i()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->I()Landroidx/appcompat/view/menu/mc0;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/mc0;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$f;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/Toolbar$f;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$f;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$f;

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$f;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/mc0;->b(Landroidx/appcompat/view/menu/uc0;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->L()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->k:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/ActionMenuView$e;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/uc0$a;

    new-instance v2, Landroidx/appcompat/widget/Toolbar$c;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/Toolbar$c;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->J(Landroidx/appcompat/view/menu/uc0$a;Landroidx/appcompat/view/menu/mc0$a;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->k()Landroidx/appcompat/widget/Toolbar$g;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800005

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/view/menu/u0;->a:I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/d3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/view/menu/am0;->q:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/d3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->k()Landroidx/appcompat/widget/Toolbar$g;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/view/menu/u0;->a:I

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public k()Landroidx/appcompat/widget/Toolbar$g;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(II)V

    return-object v0
.end method

.method public l(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$g;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public m(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$g;
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$g;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    check-cast p1, Landroidx/appcompat/widget/Toolbar$g;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroidx/appcompat/widget/Toolbar$g;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/u0;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    check-cast p1, Landroidx/appcompat/view/menu/u0;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroidx/appcompat/view/menu/u0;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$g;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$g;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final n(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/hy;->b(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-ne v0, v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    return p1
.end method

.method public final o(Landroid/view/View;I)I
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget v2, v0, Landroidx/appcompat/view/menu/u0;->a:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->p(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    sub-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge v3, p1, :cond_2

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_2
    :goto_1
    add-int/2addr p2, v4

    return p2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->L()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->L()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    :cond_3
    return v4
.end method

.method public onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->F:[I

    aput v2, v11, v3

    aput v2, v11, v2

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/view/menu/m51;->y(Landroid/view/View;)I

    move-result v12

    if-ltz v12, :cond_1

    sub-int v13, p5, p3

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_1

    :cond_1
    move v12, v2

    :goto_1
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v1, :cond_2

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_3

    :cond_2
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13, v6, v11, v12}, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;I[II)I

    move-result v13

    :goto_2
    move v14, v10

    goto :goto_3

    :cond_3
    move v13, v6

    goto :goto_2

    :goto_3
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz v1, :cond_4

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_4

    :cond_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;I[II)I

    move-result v13

    :cond_5
    :goto_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v1, :cond_6

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    :cond_6
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;I[II)I

    move-result v14

    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v16

    sub-int v3, v15, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v2

    sub-int v3, v10, v14

    sub-int v3, v16, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v17, 0x1

    aput v3, v11, v17

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v10, v10, v16

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    if-eqz v1, :cond_8

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_6

    :cond_8
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, v13, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;I[II)I

    move-result v3

    :cond_9
    :goto_6
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v1, :cond_a

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_7

    :cond_a
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v13, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;I[II)I

    move-result v3

    :cond_b
    :goto_7
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v13

    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v14

    if-eqz v13, :cond_c

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/Toolbar$g;

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p4, v7

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v7

    goto :goto_8

    :cond_c
    move/from16 p4, v7

    const/4 v2, 0x0

    :goto_8
    if-eqz v14, :cond_d

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar$g;

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v4

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v15, v4

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v4

    add-int/2addr v2, v15

    goto :goto_9

    :cond_d
    move/from16 v16, v4

    :goto_9
    if-nez v13, :cond_f

    if-eqz v14, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v18, v6

    move/from16 p3, v12

    :goto_a
    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_f
    :goto_b
    if-eqz v13, :cond_10

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    goto :goto_c

    :cond_10
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    :goto_c
    if-eqz v14, :cond_11

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    goto :goto_d

    :cond_11
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    :goto_d
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$g;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar$g;

    if-eqz v13, :cond_12

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    if-gtz v15, :cond_13

    :cond_12
    if-eqz v14, :cond_14

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    if-lez v15, :cond_14

    :cond_13
    const/16 v17, 0x1

    goto :goto_e

    :cond_14
    const/16 v17, 0x0

    :goto_e
    iget v15, v0, Landroidx/appcompat/widget/Toolbar;->w:I

    and-int/lit8 v15, v15, 0x70

    move/from16 v18, v6

    const/16 v6, 0x30

    if-eq v15, v6, :cond_18

    const/16 v6, 0x50

    if-eq v15, v6, :cond_17

    sub-int v6, v5, v8

    sub-int/2addr v6, v9

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    iget v15, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p3, v12

    iget v12, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    move/from16 p5, v3

    add-int v3, v15, v12

    if-ge v6, v3, :cond_15

    add-int v6, v15, v12

    goto :goto_f

    :cond_15
    sub-int/2addr v5, v9

    sub-int/2addr v5, v2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_16

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_16
    :goto_f
    add-int/2addr v8, v6

    goto :goto_10

    :cond_17
    move/from16 p5, v3

    move/from16 p3, v12

    sub-int/2addr v5, v9

    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v3

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    sub-int/2addr v5, v3

    sub-int v8, v5, v2

    goto :goto_10

    :cond_18
    move/from16 p5, v3

    move/from16 p3, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    add-int v8, v2, v3

    :goto_10
    if-eqz v1, :cond_1d

    if-eqz v17, :cond_19

    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->p:I

    :goto_11
    const/4 v2, 0x1

    goto :goto_12

    :cond_19
    const/4 v1, 0x0

    goto :goto_11

    :goto_12
    aget v3, v11, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v10, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v13, :cond_1a

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$g;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v10, v2

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v8, v10, v3}, Landroid/view/View;->layout(IIII)V

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    sub-int/2addr v2, v4

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_13

    :cond_1a
    move v2, v10

    :goto_13
    if-eqz v14, :cond_1b

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$g;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v8, v10, v3}, Landroid/view/View;->layout(IIII)V

    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    sub-int v1, v10, v1

    goto :goto_14

    :cond_1b
    move v1, v10

    :goto_14
    if-eqz v17, :cond_1c

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    :cond_1c
    move/from16 v3, p5

    goto/16 :goto_a

    :cond_1d
    if-eqz v17, :cond_1e

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->p:I

    move v1, v2

    :goto_15
    const/4 v2, 0x0

    goto :goto_16

    :cond_1e
    const/4 v1, 0x0

    goto :goto_15

    :goto_16
    aget v3, v11, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v3, p5, v3

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v13, :cond_1f

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$g;

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v8, v4, v5}, Landroid/view/View;->layout(IIII)V

    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    add-int/2addr v4, v6

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v5, v1

    goto :goto_17

    :cond_1f
    move v4, v3

    :goto_17
    if-eqz v14, :cond_20

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$g;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v3

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v8, v1, v5}, Landroid/view/View;->layout(IIII)V

    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    add-int/2addr v1, v5

    goto :goto_18

    :cond_20
    move v1, v3

    :goto_18
    if-eqz v17, :cond_21

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_21
    :goto_19
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/Toolbar;->b(Ljava/util/List;I)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v3

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_22

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move/from16 v12, p3

    invoke-virtual {v0, v5, v4, v11, v12}, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;I[II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_22
    move/from16 v12, p3

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/Toolbar;->b(Ljava/util/List;I)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_23

    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->z(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_23
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/Toolbar;->b(Ljava/util/List;I)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v11}, Landroidx/appcompat/widget/Toolbar;->s(Ljava/util/List;[I)I

    move-result v1

    sub-int v3, v16, v18

    sub-int v3, v3, p4

    div-int/lit8 v3, v3, 0x2

    add-int v6, v18, v3

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v6, v3

    add-int/2addr v1, v6

    if-ge v6, v4, :cond_24

    goto :goto_1c

    :cond_24
    if-le v1, v10, :cond_25

    sub-int/2addr v1, v10

    sub-int v4, v6, v1

    goto :goto_1c

    :cond_25
    move v4, v6

    :goto_1c
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1d
    if-ge v2, v1, :cond_26

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3, v4, v11, v12}, Landroidx/appcompat/widget/Toolbar;->y(Landroid/view/View;I[II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_26
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    const/4 v8, 0x0

    iget-object v9, v7, Landroidx/appcompat/widget/Toolbar;->F:[I

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/view/menu/p61;->a(Landroid/view/View;)Z

    move-result v10

    const/4 v11, 0x0

    xor-int/lit8 v12, v10, 0x1

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->o:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;IIIII)V

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v11, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v13, v1

    move v14, v2

    goto :goto_0

    :cond_0
    move v0, v11

    move v13, v0

    move v14, v13

    :goto_0
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->o:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;IIIII)V

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v1, v0

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v9, v10

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->o:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;IIIII)V

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    goto :goto_1

    :cond_2
    move v0, v11

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v8, v2

    sub-int/2addr v1, v0

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v9, v12

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->A(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v14, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    :cond_3
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->A(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v14, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    move v12, v11

    :goto_2
    if-ge v12, v10, :cond_7

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    iget v0, v0, Landroidx/appcompat/widget/Toolbar$g;->b:I

    if-nez v0, :cond_6

    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->A(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v13, v0

    move v14, v1

    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_7
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->r:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->s:I

    add-int v10, v0, v1

    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->p:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->q:I

    add-int v12, v0, v1

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    add-int v3, v8, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v10

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->A(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->q(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v14, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    move v15, v1

    move v6, v14

    move v14, v0

    goto :goto_4

    :cond_8
    move v15, v11

    move v6, v14

    move v14, v15

    :goto_4
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    add-int v3, v8, v12

    add-int v5, v15, v10

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v10, v6

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->A(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_5

    :cond_9
    move v10, v6

    :goto_5
    add-int/2addr v8, v14

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    move/from16 v3, p1

    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    invoke-static {v0, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->I()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    move v11, v0

    :goto_6
    invoke-virtual {v7, v1, v11}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$i;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/appcompat/widget/Toolbar$i;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/c;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->I()Landroidx/appcompat/view/menu/mc0;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$i;->o:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$f;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_2
    iget-boolean p1, p1, Landroidx/appcompat/widget/Toolbar$i;->p:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->D()V

    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->f()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:Landroidx/appcompat/view/menu/yp0;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/yp0;->f(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/Toolbar$i;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$i;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$f;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/qc0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/qc0;->getItemId()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$i;->o:I

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->x()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$i;->p:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->B:Z

    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->B:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->B:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->B:Z

    :cond_3
    return v3
.end method

.method public final p(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    iget p1, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    and-int/lit8 p1, p1, 0x70

    :cond_0
    return p1
.end method

.method public final q(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final r(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final s(Ljava/util/List;[I)I
    .locals 8

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget p2, p2, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar$g;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, p2

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v7, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr p2, v5

    add-int/2addr p2, v6

    add-int/2addr v4, p2

    add-int/lit8 v3, v3, 0x1

    move p2, v1

    move v1, v7

    goto :goto_0

    :cond_0
    return v4
.end method

.method public setBackInvokedCallbackEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->R:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->R:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->L()V

    :cond_0
    return-void
.end method

.method public setCollapseContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->e()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->e()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->O:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->g()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->w(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->w(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->g()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 5
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/f11;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->w(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->w(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$h;)V
    .locals 0

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->h()V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->k:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->k:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroidx/appcompat/view/menu/l3;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/l3;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 6
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->A:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->w(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->w(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->y:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->A:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroidx/appcompat/view/menu/l3;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/l3;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 6
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->l:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->z:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->w(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->w(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->x:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->z:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$f;->b:Landroidx/appcompat/view/menu/qc0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u(I)V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v2, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->C()V

    return-void
.end method

.method public final w(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y(Landroid/view/View;I[II)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int v1, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p4, p1

    add-int/2addr p2, p4

    return p2
.end method

.method public final z(Landroid/view/View;I[II)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$g;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;I)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v1, p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    return p2
.end method
