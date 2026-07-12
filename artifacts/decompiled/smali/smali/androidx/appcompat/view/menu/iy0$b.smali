.class public Landroidx/appcompat/view/menu/iy0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/iy0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Landroidx/appcompat/view/menu/iy0;

.field public a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/iy0;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/iy0$b;->E:Landroidx/appcompat/view/menu/iy0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/iy0$b;->C:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroidx/appcompat/view/menu/iy0$b;->D:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Landroidx/appcompat/view/menu/iy0$b;->a:Landroid/view/Menu;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/iy0$b;->h()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->h:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->a:Landroid/view/Menu;

    iget v1, p0, Landroidx/appcompat/view/menu/iy0$b;->b:I

    iget v2, p0, Landroidx/appcompat/view/menu/iy0$b;->i:I

    iget v3, p0, Landroidx/appcompat/view/menu/iy0$b;->j:I

    iget-object v4, p0, Landroidx/appcompat/view/menu/iy0$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iy0$b;->i(Landroid/view/MenuItem;)V

    return-void
.end method

.method public b()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->h:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->a:Landroid/view/Menu;

    iget v1, p0, Landroidx/appcompat/view/menu/iy0$b;->b:I

    iget v2, p0, Landroidx/appcompat/view/menu/iy0$b;->i:I

    iget v3, p0, Landroidx/appcompat/view/menu/iy0$b;->j:I

    iget-object v4, p0, Landroidx/appcompat/view/menu/iy0$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/iy0$b;->i(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->h:Z

    return v0
.end method

.method public final e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->E:Landroidx/appcompat/view/menu/iy0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/iy0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot instantiate class: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Landroid/util/AttributeSet;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->E:Landroidx/appcompat/view/menu/iy0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/iy0;->c:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/view/menu/mn0;->J0:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Landroidx/appcompat/view/menu/mn0;->L0:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->b:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->N0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->c:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->O0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->d:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->P0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->e:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->M0:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->f:Z

    sget v0, Landroidx/appcompat/view/menu/mn0;->K0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->g:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public g(Landroid/util/AttributeSet;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->E:Landroidx/appcompat/view/menu/iy0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/iy0;->c:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/view/menu/mn0;->Q0:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/view/menu/y01;->s(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/view/menu/y01;

    move-result-object p1

    sget v0, Landroidx/appcompat/view/menu/mn0;->T0:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/y01;->m(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->i:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->W0:I

    iget v2, p0, Landroidx/appcompat/view/menu/iy0$b;->c:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/y01;->j(II)I

    move-result v0

    sget v2, Landroidx/appcompat/view/menu/mn0;->X0:I

    iget v3, p0, Landroidx/appcompat/view/menu/iy0$b;->d:I

    invoke-virtual {p1, v2, v3}, Landroidx/appcompat/view/menu/y01;->j(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->j:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->Y0:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->o(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->k:Ljava/lang/CharSequence;

    sget v0, Landroidx/appcompat/view/menu/mn0;->Z0:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->o(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->l:Ljava/lang/CharSequence;

    sget v0, Landroidx/appcompat/view/menu/mn0;->R0:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/y01;->m(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->m:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->a1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iy0$b;->c(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/menu/iy0$b;->n:C

    sget v0, Landroidx/appcompat/view/menu/mn0;->h1:I

    const/16 v2, 0x1000

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/y01;->j(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->o:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->b1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/iy0$b;->c(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroidx/appcompat/view/menu/iy0$b;->p:C

    sget v0, Landroidx/appcompat/view/menu/mn0;->l1:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/y01;->j(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->q:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->c1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroidx/appcompat/view/menu/mn0;->c1:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/y01;->a(IZ)Z

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->r:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/iy0$b;->e:I

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->r:I

    :goto_0
    sget v0, Landroidx/appcompat/view/menu/mn0;->U0:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/y01;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->s:Z

    sget v0, Landroidx/appcompat/view/menu/mn0;->V0:I

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/iy0$b;->f:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/y01;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->t:Z

    sget v0, Landroidx/appcompat/view/menu/mn0;->S0:I

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/iy0$b;->g:Z

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/y01;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->u:Z

    sget v0, Landroidx/appcompat/view/menu/mn0;->m1:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/y01;->j(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->v:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->d1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->n(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->z:Ljava/lang/String;

    sget v0, Landroidx/appcompat/view/menu/mn0;->e1:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/y01;->m(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->w:I

    sget v0, Landroidx/appcompat/view/menu/mn0;->g1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->n(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->x:Ljava/lang/String;

    sget v0, Landroidx/appcompat/view/menu/mn0;->f1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->n(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v3, p0, Landroidx/appcompat/view/menu/iy0$b;->w:I

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/appcompat/view/menu/iy0$b;->x:Ljava/lang/String;

    if-nez v3, :cond_1

    sget-object v3, Landroidx/appcompat/view/menu/iy0;->f:[Ljava/lang/Class;

    iget-object v4, p0, Landroidx/appcompat/view/menu/iy0$b;->E:Landroidx/appcompat/view/menu/iy0;

    iget-object v4, v4, Landroidx/appcompat/view/menu/iy0;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v3, v4}, Landroidx/appcompat/view/menu/iy0$b;->e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    :cond_1
    sget v0, Landroidx/appcompat/view/menu/mn0;->i1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->o(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->A:Ljava/lang/CharSequence;

    sget v0, Landroidx/appcompat/view/menu/mn0;->n1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->o(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->B:Ljava/lang/CharSequence;

    sget v0, Landroidx/appcompat/view/menu/mn0;->k1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    sget v0, Landroidx/appcompat/view/menu/mn0;->k1:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/view/menu/y01;->j(II)I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/iy0$b;->D:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/vm;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->D:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_2
    iput-object v3, p0, Landroidx/appcompat/view/menu/iy0$b;->D:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    sget v0, Landroidx/appcompat/view/menu/mn0;->j1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->q(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroidx/appcompat/view/menu/mn0;->j1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y01;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->C:Landroid/content/res/ColorStateList;

    goto :goto_2

    :cond_3
    iput-object v3, p0, Landroidx/appcompat/view/menu/iy0$b;->C:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y01;->v()V

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/iy0$b;->h:Z

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->b:I

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->c:I

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->d:I

    iput v0, p0, Landroidx/appcompat/view/menu/iy0$b;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->f:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->g:Z

    return-void
.end method

.method public final i(Landroid/view/MenuItem;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/iy0$b;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/iy0$b;->t:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/iy0$b;->u:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/iy0$b;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/iy0$b;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/iy0$b;->m:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Landroidx/appcompat/view/menu/iy0$b;->v:I

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->z:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->E:Landroidx/appcompat/view/menu/iy0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/iy0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/appcompat/view/menu/iy0$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/iy0$b;->E:Landroidx/appcompat/view/menu/iy0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/iy0;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Landroidx/appcompat/view/menu/iy0$b;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroidx/appcompat/view/menu/iy0$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget v0, p0, Landroidx/appcompat/view/menu/iy0$b;->r:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    instance-of v0, p1, Landroidx/appcompat/view/menu/qc0;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/qc0;->s(Z)V

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->x:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v1, Landroidx/appcompat/view/menu/iy0;->e:[Ljava/lang/Class;

    iget-object v2, p0, Landroidx/appcompat/view/menu/iy0$b;->E:Landroidx/appcompat/view/menu/iy0;

    iget-object v2, v2, Landroidx/appcompat/view/menu/iy0;->a:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/appcompat/view/menu/iy0$b;->e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    :cond_5
    iget v0, p0, Landroidx/appcompat/view/menu/iy0$b;->w:I

    if-lez v0, :cond_6

    if-nez v2, :cond_6

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->A:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/oc0;->b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->B:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/oc0;->f(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-char v0, p0, Landroidx/appcompat/view/menu/iy0$b;->n:C

    iget v1, p0, Landroidx/appcompat/view/menu/iy0$b;->o:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/oc0;->a(Landroid/view/MenuItem;CI)V

    iget-char v0, p0, Landroidx/appcompat/view/menu/iy0$b;->p:C

    iget v1, p0, Landroidx/appcompat/view/menu/iy0$b;->q:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/oc0;->e(Landroid/view/MenuItem;CI)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->D:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_7

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/oc0;->d(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/iy0$b;->C:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/oc0;->c(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_8
    return-void
.end method
