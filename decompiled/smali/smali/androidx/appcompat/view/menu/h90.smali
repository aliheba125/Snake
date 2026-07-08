.class public abstract Landroidx/appcompat/view/menu/h90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/eu0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/h90$i;,
        Landroidx/appcompat/view/menu/h90$h;,
        Landroidx/appcompat/view/menu/h90$g;,
        Landroidx/appcompat/view/menu/h90$e;,
        Landroidx/appcompat/view/menu/h90$f;,
        Landroidx/appcompat/view/menu/h90$d;,
        Landroidx/appcompat/view/menu/h90$c;
    }
.end annotation


# static fields
.field public static G:Ljava/lang/reflect/Method;

.field public static H:Ljava/lang/reflect/Method;


# instance fields
.field public A:Ljava/lang/Runnable;

.field public final B:Landroid/os/Handler;

.field public final C:Landroid/graphics/Rect;

.field public D:Landroid/graphics/Rect;

.field public E:Z

.field public F:Landroid/widget/PopupWindow;

.field public a:Landroid/content/Context;

.field public b:Landroid/widget/ListAdapter;

.field public c:Landroidx/appcompat/view/menu/xm;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:Landroid/view/View;

.field public q:I

.field public r:Landroid/database/DataSetObserver;

.field public s:Landroid/view/View;

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Landroid/widget/AdapterView$OnItemClickListener;

.field public v:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final w:Landroidx/appcompat/view/menu/h90$i;

.field public final x:Landroidx/appcompat/view/menu/h90$h;

.field public final y:Landroidx/appcompat/view/menu/h90$g;

.field public final z:Landroidx/appcompat/view/menu/h90$e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Landroid/widget/PopupWindow;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "setClipToScreenEnabled"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/view/menu/h90;->G:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v3, "setEpicenterBounds"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h90;->H:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroidx/appcompat/view/menu/h90;->d:I

    iput v0, p0, Landroidx/appcompat/view/menu/h90;->e:I

    const/16 v0, 0x3ea

    iput v0, p0, Landroidx/appcompat/view/menu/h90;->h:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/h90;->l:I

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h90;->m:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h90;->n:Z

    const v1, 0x7fffffff

    iput v1, p0, Landroidx/appcompat/view/menu/h90;->o:I

    iput v0, p0, Landroidx/appcompat/view/menu/h90;->q:I

    new-instance v1, Landroidx/appcompat/view/menu/h90$i;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/h90$i;-><init>(Landroidx/appcompat/view/menu/h90;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/h90;->w:Landroidx/appcompat/view/menu/h90$i;

    new-instance v1, Landroidx/appcompat/view/menu/h90$h;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/h90$h;-><init>(Landroidx/appcompat/view/menu/h90;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/h90;->x:Landroidx/appcompat/view/menu/h90$h;

    new-instance v1, Landroidx/appcompat/view/menu/h90$g;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/h90$g;-><init>(Landroidx/appcompat/view/menu/h90;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/h90;->y:Landroidx/appcompat/view/menu/h90$g;

    new-instance v1, Landroidx/appcompat/view/menu/h90$e;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/h90$e;-><init>(Landroidx/appcompat/view/menu/h90;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/h90;->z:Landroidx/appcompat/view/menu/h90$e;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/h90;->C:Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/appcompat/view/menu/h90;->a:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/h90;->B:Landroid/os/Handler;

    sget-object v1, Landroidx/appcompat/view/menu/mn0;->G0:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroidx/appcompat/view/menu/mn0;->H0:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/view/menu/h90;->f:I

    sget v2, Landroidx/appcompat/view/menu/mn0;->I0:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/h90;->g:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/h90;->i:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroidx/appcompat/view/menu/g3;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/g3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/h90;->k:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h90;->j:Z

    return-void
.end method

.method public final B(Z)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/h90;->G:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/h90$d;->b(Landroid/widget/PopupWindow;Z)V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public C(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/h90;->g:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h90;->i:Z

    return-void
.end method

.method public D(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/h90;->e:I

    return-void
.end method

.method public a()V
    .locals 13

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h90;->e()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h90;->m()Z

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    iget v3, p0, Landroidx/appcompat/view/menu/h90;->h:I

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/jj0;->b(Landroid/widget/PopupWindow;I)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h90;->h()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Landroidx/appcompat/view/menu/h90;->e:I

    if-ne v2, v6, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h90;->h()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :cond_2
    :goto_0
    iget v7, p0, Landroidx/appcompat/view/menu/h90;->d:I

    if-ne v7, v6, :cond_7

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v6

    :goto_1
    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    iget v4, p0, Landroidx/appcompat/view/menu/h90;->e:I

    if-ne v4, v6, :cond_4

    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    iget v4, p0, Landroidx/appcompat/view/menu/h90;->e:I

    if-ne v4, v6, :cond_6

    move v4, v6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_4

    :cond_7
    if-ne v7, v4, :cond_8

    goto :goto_4

    :cond_8
    move v0, v7

    :goto_4
    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/h90;->n:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/h90;->m:Z

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    move v3, v5

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v7, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h90;->h()Landroid/view/View;

    move-result-object v8

    iget v9, p0, Landroidx/appcompat/view/menu/h90;->f:I

    iget v10, p0, Landroidx/appcompat/view/menu/h90;->g:I

    if-gez v2, :cond_a

    move v11, v6

    goto :goto_6

    :cond_a
    move v11, v2

    :goto_6
    if-gez v0, :cond_b

    move v12, v6

    goto :goto_7

    :cond_b
    move v12, v0

    :goto_7
    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_c

    :cond_c
    iget v1, p0, Landroidx/appcompat/view/menu/h90;->e:I

    if-ne v1, v6, :cond_d

    move v1, v6

    goto :goto_8

    :cond_d
    if-ne v1, v4, :cond_e

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h90;->h()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_e
    :goto_8
    iget v2, p0, Landroidx/appcompat/view/menu/h90;->d:I

    if-ne v2, v6, :cond_f

    move v0, v6

    goto :goto_9

    :cond_f
    if-ne v2, v4, :cond_10

    goto :goto_9

    :cond_10
    move v0, v2

    :goto_9
    iget-object v2, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/h90;->B(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/h90;->n:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/h90;->m:Z

    if-nez v1, :cond_11

    move v1, v3

    goto :goto_a

    :cond_11
    move v1, v5

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->x:Landroidx/appcompat/view/menu/h90$h;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h90;->k:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/h90;->j:Z

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/jj0;->a(Landroid/widget/PopupWindow;Z)V

    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_13

    sget-object v0, Landroidx/appcompat/view/menu/h90;->H:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Landroidx/appcompat/view/menu/h90;->D:Landroid/graphics/Rect;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :cond_13
    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->D:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/h90$d;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    :catch_0
    :cond_14
    :goto_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h90;->h()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/view/menu/h90;->f:I

    iget v3, p0, Landroidx/appcompat/view/menu/h90;->g:I

    iget v4, p0, Landroidx/appcompat/view/menu/h90;->l:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/jj0;->c(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    invoke-virtual {v0, v6}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h90;->E:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/xm;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h90;->f()V

    :cond_16
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h90;->E:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->B:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->z:Landroidx/appcompat/view/menu/h90$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    :goto_c
    return-void
.end method

.method public d()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h90;->o()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->B:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->w:Landroidx/appcompat/view/menu/h90$i;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()I
    .locals 12

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->a:Landroid/content/Context;

    new-instance v5, Landroidx/appcompat/view/menu/h90$a;

    invoke-direct {v5, p0}, Landroidx/appcompat/view/menu/h90$a;-><init>(Landroidx/appcompat/view/menu/h90;)V

    iput-object v5, p0, Landroidx/appcompat/view/menu/h90;->A:Ljava/lang/Runnable;

    iget-boolean v5, p0, Landroidx/appcompat/view/menu/h90;->E:Z

    xor-int/2addr v5, v3

    invoke-virtual {p0, v0, v5}, Landroidx/appcompat/view/menu/h90;->g(Landroid/content/Context;Z)Landroidx/appcompat/view/menu/xm;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    iget-object v6, p0, Landroidx/appcompat/view/menu/h90;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/xm;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    iget-object v6, p0, Landroidx/appcompat/view/menu/h90;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    iget-object v6, p0, Landroidx/appcompat/view/menu/h90;->u:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    invoke-virtual {v5, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    invoke-virtual {v5, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    new-instance v6, Landroidx/appcompat/view/menu/h90$b;

    invoke-direct {v6, p0}, Landroidx/appcompat/view/menu/h90$b;-><init>(Landroidx/appcompat/view/menu/h90;)V

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    iget-object v6, p0, Landroidx/appcompat/view/menu/h90;->y:Landroidx/appcompat/view/menu/h90$g;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->v:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    iget-object v6, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    invoke-virtual {v6, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    iget-object v6, p0, Landroidx/appcompat/view/menu/h90;->p:Landroid/view/View;

    if-eqz v6, :cond_5

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v8, p0, Landroidx/appcompat/view/menu/h90;->q:I

    if-eqz v8, :cond_3

    if-eq v8, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/appcompat/view/menu/h90;->q:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget v0, p0, Landroidx/appcompat/view/menu/h90;->e:I

    if-ltz v0, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v0, v4

    move v5, v0

    :goto_1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v0, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    move v0, v5

    move-object v5, v7

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_2
    iget-object v6, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->p:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v6, p0, Landroidx/appcompat/view/menu/h90;->C:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->C:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget-boolean v7, p0, Landroidx/appcompat/view/menu/h90;->i:Z

    if-nez v7, :cond_9

    neg-int v6, v6

    iput v6, p0, Landroidx/appcompat/view/menu/h90;->g:I

    goto :goto_4

    :cond_8
    iget-object v5, p0, Landroidx/appcompat/view/menu/h90;->C:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    move v5, v4

    :cond_9
    :goto_4
    iget-object v6, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    goto :goto_5

    :cond_a
    move v3, v4

    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h90;->h()Landroid/view/View;

    move-result-object v4

    iget v6, p0, Landroidx/appcompat/view/menu/h90;->g:I

    invoke-virtual {p0, v4, v6, v3}, Landroidx/appcompat/view/menu/h90;->k(Landroid/view/View;IZ)I

    move-result v3

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/h90;->m:Z

    if-nez v4, :cond_f

    iget v4, p0, Landroidx/appcompat/view/menu/h90;->d:I

    if-ne v4, v2, :cond_b

    goto :goto_8

    :cond_b
    iget v4, p0, Landroidx/appcompat/view/menu/h90;->e:I

    const/4 v6, -0x2

    if-eq v4, v6, :cond_d

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v4, v2, :cond_c

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_6
    move v7, v1

    goto :goto_7

    :cond_c
    iget-object v2, p0, Landroidx/appcompat/view/menu/h90;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Landroidx/appcompat/view/menu/h90;->C:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    sub-int/2addr v2, v6

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    :cond_d
    iget-object v2, p0, Landroidx/appcompat/view/menu/h90;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Landroidx/appcompat/view/menu/h90;->C:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    sub-int/2addr v2, v6

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    :goto_7
    iget-object v6, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    const/4 v8, 0x0

    const/4 v9, -0x1

    sub-int v10, v3, v0

    const/4 v11, -0x1

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/view/menu/xm;->d(IIIII)I

    move-result v1

    if-lez v1, :cond_e

    iget-object v2, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    add-int/2addr v0, v5

    :cond_e
    add-int/2addr v1, v0

    return v1

    :cond_f
    :goto_8
    add-int/2addr v3, v5

    return v3
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/xm;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public abstract g(Landroid/content/Context;Z)Landroidx/appcompat/view/menu/xm;
.end method

.method public h()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->s:Landroid/view/View;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/h90;->f:I

    return v0
.end method

.method public final k(Landroid/view/View;IZ)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-static {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/h90$c;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result p1

    return p1
.end method

.method public l()I
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h90;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/h90;->g:I

    return v0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/h90;->E:Z

    return v0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public p(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->r:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/h90$f;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/h90$f;-><init>(Landroidx/appcompat/view/menu/h90;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/h90;->r:Landroid/database/DataSetObserver;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/h90;->b:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->r:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/h90;->c:Landroidx/appcompat/view/menu/xm;

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->b:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public q(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h90;->s:Landroid/view/View;

    return-void
.end method

.method public r(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public s(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/h90;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->C:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/appcompat/view/menu/h90;->e:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/h90;->D(I)V

    :goto_0
    return-void
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/h90;->l:I

    return-void
.end method

.method public u(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/h90;->D:Landroid/graphics/Rect;

    return-void
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/h90;->f:I

    return-void
.end method

.method public w(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public x(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/h90;->E:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public y(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public z(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h90;->u:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method
