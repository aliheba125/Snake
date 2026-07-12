.class public Landroidx/appcompat/view/menu/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/CompoundButton;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/x2;->b:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/appcompat/view/menu/x2;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/x2;->d:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/x2;->e:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/x2;->a:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x2;->a:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ue;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/x2;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/x2;->e:Z

    if-eqz v1, :cond_4

    :cond_0
    invoke-static {v0}, Landroidx/appcompat/view/menu/om;->l(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/x2;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/x2;->b:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/om;->i(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/x2;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/x2;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/om;->j(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/x2;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/x2;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public b()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x2;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x2;->c:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public d(Landroid/util/AttributeSet;I)V
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/view/menu/x2;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/mn0;->p0:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/view/menu/y01;->t(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/view/menu/y01;

    move-result-object v0

    iget-object v3, p0, Landroidx/appcompat/view/menu/x2;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/appcompat/view/menu/mn0;->p0:[I

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y01;->p()Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v9, 0x0

    move-object v6, p1

    move v8, p2

    invoke-static/range {v3 .. v9}, Landroidx/appcompat/view/menu/m51;->i0(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    sget p1, Landroidx/appcompat/view/menu/mn0;->r0:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroidx/appcompat/view/menu/mn0;->r0:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/y01;->m(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/x2;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_2
    sget p1, Landroidx/appcompat/view/menu/mn0;->q0:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroidx/appcompat/view/menu/mn0;->q0:I

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/y01;->m(II)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Landroidx/appcompat/view/menu/x2;->a:Landroid/widget/CompoundButton;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/i3;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget p1, Landroidx/appcompat/view/menu/mn0;->s0:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/x2;->a:Landroid/widget/CompoundButton;

    sget p2, Landroidx/appcompat/view/menu/mn0;->s0:I

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/y01;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/ue;->b(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_2
    sget p1, Landroidx/appcompat/view/menu/mn0;->t0:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/view/menu/x2;->a:Landroid/widget/CompoundButton;

    sget p2, Landroidx/appcompat/view/menu/mn0;->t0:I

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/view/menu/y01;->j(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/vm;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/ue;->c(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y01;->v()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y01;->v()V

    throw p1
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/x2;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/x2;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/x2;->f:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/x2;->a()V

    return-void
.end method

.method public f(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/x2;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/x2;->d:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/x2;->a()V

    return-void
.end method

.method public g(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/x2;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/x2;->e:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/x2;->a()V

    return-void
.end method
