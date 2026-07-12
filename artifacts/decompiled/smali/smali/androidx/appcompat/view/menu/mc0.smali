.class public Landroidx/appcompat/view/menu/mc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/hy0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/mc0$a;,
        Landroidx/appcompat/view/menu/mc0$b;
    }
.end annotation


# static fields
.field public static final A:[I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/res/Resources;

.field public c:Z

.field public d:Z

.field public e:Landroidx/appcompat/view/menu/mc0$a;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Z

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Z

.field public l:I

.field public m:Landroid/view/ContextMenu$ContextMenuInfo;

.field public n:Ljava/lang/CharSequence;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Landroid/view/View;

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/util/ArrayList;

.field public w:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public x:Landroidx/appcompat/view/menu/qc0;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/view/menu/mc0;->A:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/mc0;->l:I

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->q:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->r:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->s:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->t:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->u:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mc0;->v:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->y:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc0;->b:Landroid/content/res/Resources;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc0;->g:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mc0;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mc0;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/mc0;->j:Ljava/util/ArrayList;

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mc0;->k:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->U(Z)V

    return-void
.end method

.method public static m(Ljava/util/ArrayList;I)I
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/qc0;->d()I

    move-result v1

    if-gt v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static x(I)I
    .locals 3

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_0

    sget-object v1, Landroidx/appcompat/view/menu/mc0;->A:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A()Ljava/util/ArrayList;
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->g:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/qc0;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/appcompat/view/menu/mc0;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mc0;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->k:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->q:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->y:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->c:Z

    return v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->d:Z

    return v0
.end method

.method public F(Landroidx/appcompat/view/menu/qc0;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mc0;->k:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-void
.end method

.method public G(Landroidx/appcompat/view/menu/qc0;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mc0;->h:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-void
.end method

.method public H(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mc0;->h:Z

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mc0;->k:Z

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->h(Z)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mc0;->r:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mc0;->s:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public I(Landroid/view/MenuItem;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/mc0;->J(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/uc0;I)Z

    move-result p1

    return p1
.end method

.method public J(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/uc0;I)Z
    .locals 4

    check-cast p1, Landroidx/appcompat/view/menu/qc0;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qc0;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qc0;->j()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qc0;->g()Landroidx/appcompat/view/menu/y0;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qc0;->i()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qc0;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/mc0;->d(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qc0;->hasSubMenu()Z

    move-result v2

    if-nez v2, :cond_2

    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_5

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/mc0;->d(Z)V

    goto :goto_0

    :cond_2
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mc0;->d(Z)V

    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qc0;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_4

    new-instance p3, Landroidx/appcompat/view/menu/ay0;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->s()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p0, p1}, Landroidx/appcompat/view/menu/ay0;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/mc0;Landroidx/appcompat/view/menu/qc0;)V

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/qc0;->w(Landroidx/appcompat/view/menu/ay0;)V

    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qc0;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ay0;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/mc0;->i(Landroidx/appcompat/view/menu/ay0;Landroidx/appcompat/view/menu/uc0;)Z

    move-result p1

    or-int/2addr v1, p1

    if-nez v1, :cond_5

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/mc0;->d(Z)V

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    return v0
.end method

.method public final K(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public L(Landroidx/appcompat/view/menu/uc0;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/uc0;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public M(Landroidx/appcompat/view/menu/mc0$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc0;->e:Landroidx/appcompat/view/menu/mc0$a;

    return-void
.end method

.method public N(Landroid/view/MenuItem;)V
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->W()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/qc0;->getGroupId()I

    move-result v5

    if-ne v5, v0, :cond_3

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/qc0;->l()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/qc0;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v4, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/qc0;->r(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->V()V

    return-void
.end method

.method public O(I)Landroidx/appcompat/view/menu/mc0;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/mc0;->Q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public P(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/mc0;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/mc0;->Q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final Q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->y()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    iput-object p5, p0, Landroidx/appcompat/view/menu/mc0;->p:Landroid/view/View;

    iput-object v1, p0, Landroidx/appcompat/view/menu/mc0;->n:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroidx/appcompat/view/menu/mc0;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc0;->n:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iput-object p2, p0, Landroidx/appcompat/view/menu/mc0;->n:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    if-lez p3, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->s()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/appcompat/view/menu/lg;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc0;->o:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    iput-object p4, p0, Landroidx/appcompat/view/menu/mc0;->o:Landroid/graphics/drawable/Drawable;

    :cond_4
    :goto_1
    iput-object v1, p0, Landroidx/appcompat/view/menu/mc0;->p:Landroid/view/View;

    :goto_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-void
.end method

.method public R(I)Landroidx/appcompat/view/menu/mc0;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/mc0;->Q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public S(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/mc0;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/mc0;->Q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public T(Landroid/view/View;)Landroidx/appcompat/view/menu/mc0;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/mc0;->Q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final U(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/mc0;->b:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/mc0;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/view/menu/mc0;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/q51;->j(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->d:Z

    return-void
.end method

.method public V()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->q:Z

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/mc0;->r:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->r:Z

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->s:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    :cond_0
    return-void
.end method

.method public W()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->r:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->s:Z

    :cond_0
    return-void
.end method

.method public a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    invoke-static {p3}, Landroidx/appcompat/view/menu/mc0;->x(I)I

    move-result v7

    iget v6, p0, Landroidx/appcompat/view/menu/mc0;->l:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/mc0;->f(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/qc0;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/mc0;->m:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/qc0;->u(Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-static {p2, v7}, Landroidx/appcompat/view/menu/mc0;->m(Ljava/util/ArrayList;I)I

    move-result p3

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-object p1
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->b:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/mc0;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->b:Landroid/content/res/Resources;

    .line 4
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/mc0;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/mc0;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/mc0;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Landroidx/appcompat/view/menu/mc0;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_3

    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->b:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/mc0;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->b:Landroid/content/res/Resources;

    .line 6
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/mc0;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/mc0;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qc0;

    .line 4
    new-instance p2, Landroidx/appcompat/view/menu/ay0;

    iget-object p3, p0, Landroidx/appcompat/view/menu/mc0;->a:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Landroidx/appcompat/view/menu/ay0;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/mc0;Landroidx/appcompat/view/menu/qc0;)V

    .line 5
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/qc0;->w(Landroidx/appcompat/view/menu/ay0;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/mc0;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/appcompat/view/menu/uc0;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p2, p0}, Landroidx/appcompat/view/menu/uc0;->c(Landroid/content/Context;Landroidx/appcompat/view/menu/mc0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mc0;->k:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->e:Landroidx/appcompat/view/menu/mc0$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/mc0$a;->b(Landroidx/appcompat/view/menu/mc0;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->x:Landroidx/appcompat/view/menu/qc0;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mc0;->e(Landroidx/appcompat/view/menu/qc0;)Z

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-void
.end method

.method public clearHeader()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/mc0;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/appcompat/view/menu/mc0;->n:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/appcompat/view/menu/mc0;->p:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/mc0;->d(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->u:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/uc0;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, p0, p1}, Landroidx/appcompat/view/menu/uc0;->b(Landroidx/appcompat/view/menu/mc0;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mc0;->u:Z

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/qc0;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->x:Landroidx/appcompat/view/menu/qc0;

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->W()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/uc0;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/uc0;->h(Landroidx/appcompat/view/menu/mc0;Landroidx/appcompat/view/menu/qc0;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->V()V

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc0;->x:Landroidx/appcompat/view/menu/qc0;

    :cond_4
    :goto_1
    return v1
.end method

.method public final f(IIIILjava/lang/CharSequence;I)Landroidx/appcompat/view/menu/qc0;
    .locals 9

    new-instance v8, Landroidx/appcompat/view/menu/qc0;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/qc0;-><init>(Landroidx/appcompat/view/menu/mc0;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/qc0;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/qc0;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/qc0;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Landroidx/appcompat/view/menu/mc0;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->e:Landroidx/appcompat/view/menu/mc0$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/mc0$a;->a(Landroidx/appcompat/view/menu/mc0;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public final h(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->W()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/uc0;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/uc0;->f(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->V()V

    return-void
.end method

.method public hasVisibleItems()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->z:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/qc0;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final i(Landroidx/appcompat/view/menu/ay0;Landroidx/appcompat/view/menu/uc0;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/uc0;->e(Landroidx/appcompat/view/menu/ay0;)Z

    move-result v1

    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/uc0;

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_2

    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/uc0;->e(Landroidx/appcompat/view/menu/ay0;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    return v1
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/mc0;->o(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/qc0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Landroidx/appcompat/view/menu/qc0;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->W()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/uc0;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/uc0;->j(Landroidx/appcompat/view/menu/mc0;Landroidx/appcompat/view/menu/qc0;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->V()V

    if-eqz v1, :cond_4

    iput-object p1, p0, Landroidx/appcompat/view/menu/mc0;->x:Landroidx/appcompat/view/menu/qc0;

    :cond_4
    return v1
.end method

.method public k(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/mc0;->l(II)I

    move-result p1

    return p1
.end method

.method public l(II)I
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->size()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/qc0;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public n(I)I
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/qc0;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public o(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/qc0;
    .locals 11

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/mc0;->p(Ljava/util/List;ILandroid/view/KeyEvent;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/qc0;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->D()Z

    move-result v4

    move v6, v5

    :goto_0
    if-ge v6, p2, :cond_7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/qc0;

    if-eqz v4, :cond_2

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/qc0;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/qc0;->getNumericShortcut()C

    move-result v8

    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-ne v8, v10, :cond_3

    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_5

    :cond_3
    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v8, v9, :cond_4

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    const/16 v8, 0x43

    if-ne p1, v8, :cond_6

    :cond_5
    return-object v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method public p(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 12

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->D()Z

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v1

    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_0

    if-eq p2, v4, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_6

    iget-object v7, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/qc0;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/qc0;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/mc0;

    invoke-virtual {v8, p1, p2, p3}, Landroidx/appcompat/view/menu/mc0;->p(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/qc0;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/qc0;->getNumericShortcut()C

    move-result v8

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/qc0;->getAlphabeticModifiers()I

    move-result v9

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/qc0;->getNumericModifiers()I

    move-result v9

    :goto_2
    const v10, 0x1100f

    and-int v11, v1, v10

    and-int/2addr v9, v10

    if-ne v11, v9, :cond_5

    if-eqz v8, :cond_5

    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-eq v8, v10, :cond_4

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_4

    if-eqz v0, :cond_5

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    if-ne p2, v4, :cond_5

    :cond_4
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/qc0;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/mc0;->I(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/mc0;->o(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/qc0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/mc0;->I(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/mc0;->d(Z)V

    :cond_1
    return p1
.end method

.method public q()V
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->A()Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/mc0;->k:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/uc0;

    if-nez v5, :cond_1

    iget-object v5, p0, Landroidx/appcompat/view/menu/mc0;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Landroidx/appcompat/view/menu/uc0;->g()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/mc0;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/mc0;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/qc0;->k()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroidx/appcompat/view/menu/mc0;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/mc0;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->A()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iput-boolean v2, p0, Landroidx/appcompat/view/menu/mc0;->k:Z

    return-void
.end method

.method public r()Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->q()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeGroup(I)V
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->k(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_0

    iget-object v3, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/qc0;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/view/menu/mc0;->K(IZ)V

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->n(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/mc0;->K(IZ)V

    return-void
.end method

.method public s()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->a:Landroid/content/Context;

    return-object v0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/qc0;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/qc0;->s(Z)V

    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/qc0;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mc0;->y:Z

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/qc0;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/qc0;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    iget-object v4, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/qc0;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/qc0;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4, p2}, Landroidx/appcompat/view/menu/qc0;->x(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    :cond_2
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/mc0;->c:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/mc0;->H(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public t()Landroidx/appcompat/view/menu/qc0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->x:Landroidx/appcompat/view/menu/qc0;

    return-object v0
.end method

.method public u()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public v()Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mc0;->q()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mc0;->t:Z

    return v0
.end method

.method public y()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mc0;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method public z()Landroidx/appcompat/view/menu/mc0;
    .locals 0

    return-object p0
.end method
