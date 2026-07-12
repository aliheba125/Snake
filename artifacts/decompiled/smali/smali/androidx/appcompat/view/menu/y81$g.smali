.class public Landroidx/appcompat/view/menu/y81$g;
.super Landroidx/appcompat/view/menu/y81$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/y81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static h:Z = false

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Ljava/lang/Class;

.field public static k:Ljava/lang/reflect/Field;

.field public static l:Ljava/lang/reflect/Field;


# instance fields
.field public final c:Landroid/view/WindowInsets;

.field public d:[Landroidx/appcompat/view/menu/h50;

.field public e:Landroidx/appcompat/view/menu/h50;

.field public f:Landroidx/appcompat/view/menu/y81;

.field public g:Landroidx/appcompat/view/menu/h50;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/y81$l;-><init>(Landroidx/appcompat/view/menu/y81;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$g;->e:Landroidx/appcompat/view/menu/h50;

    iput-object p2, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/y81;Landroidx/appcompat/view/menu/y81$g;)V
    .locals 1

    .line 2
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/y81$g;-><init>(Landroidx/appcompat/view/menu/y81;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private t(IZ)Landroidx/appcompat/view/menu/h50;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, Landroidx/appcompat/view/menu/h50;->e:Landroidx/appcompat/view/menu/h50;

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/view/menu/y81$g;->u(IZ)Landroidx/appcompat/view/menu/h50;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/h50;->a(Landroidx/appcompat/view/menu/h50;Landroidx/appcompat/view/menu/h50;)Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private v()Landroidx/appcompat/view/menu/h50;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->f:Landroidx/appcompat/view/menu/y81;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81;->g()Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/h50;->e:Landroidx/appcompat/view/menu/h50;

    return-object v0
.end method

.method private w(Landroid/view/View;)Landroidx/appcompat/view/menu/h50;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_5

    sget-boolean v0, Landroidx/appcompat/view/menu/y81$g;->h:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/y81$g;->x()V

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/y81$g;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Landroidx/appcompat/view/menu/y81$g;->j:Ljava/lang/Class;

    if-eqz v2, :cond_4

    sget-object v2, Landroidx/appcompat/view/menu/y81$g;->k:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    sget-object v0, Landroidx/appcompat/view/menu/y81$g;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/y81$g;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    invoke-static {p1}, Landroidx/appcompat/view/menu/h50;->c(Landroid/graphics/Rect;)Landroidx/appcompat/view/menu/h50;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    return-object v1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    return-object v1

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static x()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/y81$g;->i:Ljava/lang/reflect/Method;

    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/y81$g;->j:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/y81$g;->k:Ljava/lang/reflect/Field;

    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/y81$g;->l:Ljava/lang/reflect/Field;

    sget-object v1, Landroidx/appcompat/view/menu/y81$g;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v1, Landroidx/appcompat/view/menu/y81$g;->l:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sput-boolean v0, Landroidx/appcompat/view/menu/y81$g;->h:Z

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/y81$g;->w(Landroid/view/View;)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/h50;->e:Landroidx/appcompat/view/menu/h50;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y81$g;->q(Landroidx/appcompat/view/menu/h50;)V

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/y81;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->f:Landroidx/appcompat/view/menu/y81;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y81;->q(Landroidx/appcompat/view/menu/y81;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->g:Landroidx/appcompat/view/menu/h50;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/y81;->p(Landroidx/appcompat/view/menu/h50;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/y81$l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Landroidx/appcompat/view/menu/y81$g;

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->g:Landroidx/appcompat/view/menu/h50;

    iget-object p1, p1, Landroidx/appcompat/view/menu/y81$g;->g:Landroidx/appcompat/view/menu/h50;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(I)Landroidx/appcompat/view/menu/h50;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/y81$g;->t(IZ)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1
.end method

.method public final k()Landroidx/appcompat/view/menu/h50;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->e:Landroidx/appcompat/view/menu/h50;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/h50;->b(IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->e:Landroidx/appcompat/view/menu/h50;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->e:Landroidx/appcompat/view/menu/h50;

    return-object v0
.end method

.method public m(IIII)Landroidx/appcompat/view/menu/y81;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/y81$b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-static {v1}, Landroidx/appcompat/view/menu/y81;->t(Landroid/view/WindowInsets;)Landroidx/appcompat/view/menu/y81;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/y81$b;-><init>(Landroidx/appcompat/view/menu/y81;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$g;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/y81;->m(Landroidx/appcompat/view/menu/h50;IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/y81$b;->d(Landroidx/appcompat/view/menu/h50;)Landroidx/appcompat/view/menu/y81$b;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->i()Landroidx/appcompat/view/menu/h50;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/y81;->m(Landroidx/appcompat/view/menu/h50;IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/y81$b;->c(Landroidx/appcompat/view/menu/h50;)Landroidx/appcompat/view/menu/y81$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y81$b;->a()Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    return-object p1
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y81$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public p([Landroidx/appcompat/view/menu/h50;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$g;->d:[Landroidx/appcompat/view/menu/h50;

    return-void
.end method

.method public q(Landroidx/appcompat/view/menu/h50;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$g;->g:Landroidx/appcompat/view/menu/h50;

    return-void
.end method

.method public r(Landroidx/appcompat/view/menu/y81;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/y81$g;->f:Landroidx/appcompat/view/menu/y81;

    return-void
.end method

.method public u(IZ)Landroidx/appcompat/view/menu/h50;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_b

    const/16 p2, 0x8

    if-eq p1, p2, :cond_6

    const/16 p2, 0x10

    if-eq p1, p2, :cond_5

    const/16 p2, 0x20

    if-eq p1, p2, :cond_4

    const/16 p2, 0x40

    if-eq p1, p2, :cond_3

    const/16 p2, 0x80

    if-eq p1, p2, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/h50;->e:Landroidx/appcompat/view/menu/h50;

    return-object p1

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/y81$g;->f:Landroidx/appcompat/view/menu/y81;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y81;->e()Landroidx/appcompat/view/menu/im;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->f()Landroidx/appcompat/view/menu/im;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/im;->b()I

    move-result p2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/im;->d()I

    move-result v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/im;->c()I

    move-result v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/im;->a()I

    move-result p1

    invoke-static {p2, v0, v1, p1}, Landroidx/appcompat/view/menu/h50;->b(IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Landroidx/appcompat/view/menu/h50;->e:Landroidx/appcompat/view/menu/h50;

    return-object p1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->l()Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->h()Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->j()Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/y81$g;->d:[Landroidx/appcompat/view/menu/h50;

    if-eqz p1, :cond_7

    invoke-static {p2}, Landroidx/appcompat/view/menu/y81$m;->d(I)I

    move-result p2

    aget-object v2, p1, p2

    :cond_7
    if-eqz v2, :cond_8

    return-object v2

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$g;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y81$g;->v()Landroidx/appcompat/view/menu/h50;

    move-result-object p2

    iget p1, p1, Landroidx/appcompat/view/menu/h50;->d:I

    iget v0, p2, Landroidx/appcompat/view/menu/h50;->d:I

    if-le p1, v0, :cond_9

    invoke-static {v1, v1, v1, p1}, Landroidx/appcompat/view/menu/h50;->b(IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p1, p0, Landroidx/appcompat/view/menu/y81$g;->g:Landroidx/appcompat/view/menu/h50;

    if-eqz p1, :cond_a

    sget-object v0, Landroidx/appcompat/view/menu/h50;->e:Landroidx/appcompat/view/menu/h50;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/h50;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Landroidx/appcompat/view/menu/y81$g;->g:Landroidx/appcompat/view/menu/h50;

    iget p1, p1, Landroidx/appcompat/view/menu/h50;->d:I

    iget p2, p2, Landroidx/appcompat/view/menu/h50;->d:I

    if-le p1, p2, :cond_a

    invoke-static {v1, v1, v1, p1}, Landroidx/appcompat/view/menu/h50;->b(IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1

    :cond_a
    sget-object p1, Landroidx/appcompat/view/menu/h50;->e:Landroidx/appcompat/view/menu/h50;

    return-object p1

    :cond_b
    if-eqz p2, :cond_c

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y81$g;->v()Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$l;->i()Landroidx/appcompat/view/menu/h50;

    move-result-object p2

    iget v0, p1, Landroidx/appcompat/view/menu/h50;->a:I

    iget v2, p2, Landroidx/appcompat/view/menu/h50;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p1, Landroidx/appcompat/view/menu/h50;->c:I

    iget v3, p2, Landroidx/appcompat/view/menu/h50;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p1, Landroidx/appcompat/view/menu/h50;->d:I

    iget p2, p2, Landroidx/appcompat/view/menu/h50;->d:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroidx/appcompat/view/menu/h50;->b(IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$g;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/y81$g;->f:Landroidx/appcompat/view/menu/y81;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/y81;->g()Landroidx/appcompat/view/menu/h50;

    move-result-object v2

    :cond_d
    iget p2, p1, Landroidx/appcompat/view/menu/h50;->d:I

    if-eqz v2, :cond_e

    iget v0, v2, Landroidx/appcompat/view/menu/h50;->d:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_e
    iget v0, p1, Landroidx/appcompat/view/menu/h50;->a:I

    iget p1, p1, Landroidx/appcompat/view/menu/h50;->c:I

    invoke-static {v0, v1, p1, p2}, Landroidx/appcompat/view/menu/h50;->b(IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1

    :cond_f
    if-eqz p2, :cond_10

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y81$g;->v()Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    iget p1, p1, Landroidx/appcompat/view/menu/h50;->b:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$g;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object p2

    iget p2, p2, Landroidx/appcompat/view/menu/h50;->b:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1, v1, v1}, Landroidx/appcompat/view/menu/h50;->b(IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1

    :cond_10
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y81$g;->k()Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    iget p1, p1, Landroidx/appcompat/view/menu/h50;->b:I

    invoke-static {v1, p1, v1, v1}, Landroidx/appcompat/view/menu/h50;->b(IIII)Landroidx/appcompat/view/menu/h50;

    move-result-object p1

    return-object p1
.end method
