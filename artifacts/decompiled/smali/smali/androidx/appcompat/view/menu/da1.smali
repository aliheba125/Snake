.class public final Landroidx/appcompat/view/menu/da1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ca1;


# static fields
.field public static final b:Landroidx/appcompat/view/menu/da1;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/da1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/da1;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/da1;->b:Landroidx/appcompat/view/menu/da1;

    const-class v0, Landroidx/appcompat/view/menu/da1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowMetricsCalculatorC\u2026at::class.java.simpleName"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/da1;->c:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {}, Landroidx/appcompat/view/menu/y81$m;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroidx/appcompat/view/menu/y81$m;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Landroidx/appcompat/view/menu/y81$m;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Landroidx/appcompat/view/menu/y81$m;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {}, Landroidx/appcompat/view/menu/y81$m;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {}, Landroidx/appcompat/view/menu/y81$m;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {}, Landroidx/appcompat/view/menu/y81$m;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {}, Landroidx/appcompat/view/menu/y81$m;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/appcompat/view/menu/qc;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/da1;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroidx/appcompat/view/menu/ba1;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->e(Landroid/content/Context;)Landroidx/appcompat/view/menu/ba1;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/app/Activity;)Landroidx/appcompat/view/menu/ba1;
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v2, Landroidx/appcompat/view/menu/sg;->a:Landroidx/appcompat/view/menu/sg;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/sg;->a(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->g(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->f(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    if-lt v0, v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->h(Landroid/content/Context;)Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Landroidx/appcompat/view/menu/y81$b;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/y81$b;-><init>()V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y81$b;->a()Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    const-string v0, "{\n            WindowInse\u2026ilder().build()\n        }"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Landroidx/appcompat/view/menu/ba1;

    new-instance v1, Landroidx/appcompat/view/menu/q8;

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/q8;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/ba1;-><init>(Landroidx/appcompat/view/menu/q8;Landroidx/appcompat/view/menu/y81;)V

    return-object v0
.end method

.method public d(Landroid/content/Context;)Landroidx/appcompat/view/menu/ba1;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/sg;->a:Landroidx/appcompat/view/menu/sg;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/sg;->c(Landroid/content/Context;)Landroidx/appcompat/view/menu/ba1;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/ng;->a:Landroidx/appcompat/view/menu/ng;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ng;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->c(Landroid/app/Activity;)Landroidx/appcompat/view/menu/ba1;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, v0, Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_2

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    const-string v0, "wm.defaultDisplay"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->k(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroidx/appcompat/view/menu/ba1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Landroidx/appcompat/view/menu/ba1;-><init>(Landroid/graphics/Rect;Landroidx/appcompat/view/menu/y81;ILandroidx/appcompat/view/menu/lj;)V

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a UiContext"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Landroid/content/Context;)Landroidx/appcompat/view/menu/ba1;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v2, Landroidx/appcompat/view/menu/sg;->a:Landroidx/appcompat/view/menu/sg;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/sg;->d(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    const-string v3, "display"

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/da1;->k(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v3

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->h(Landroid/content/Context;)Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Landroidx/appcompat/view/menu/y81$b;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/y81$b;-><init>()V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y81$b;->a()Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    const-string v0, "{\n            WindowInse\u2026ilder().build()\n        }"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Landroidx/appcompat/view/menu/ba1;

    new-instance v1, Landroidx/appcompat/view/menu/q8;

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/q8;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/ba1;-><init>(Landroidx/appcompat/view/menu/q8;Landroidx/appcompat/view/menu/y81;)V

    return-object v0
.end method

.method public final f(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Landroid/content/res/Configuration;

    const-string v4, "windowConfiguration"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/appcompat/view/menu/h1;->a:Landroidx/appcompat/view/menu/h1;

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/h1;->a(Landroid/app/Activity;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "null cannot be cast to non-null type android.graphics.Rect"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getBounds"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getAppBounds"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/da1;->l(Landroid/app/Activity;Landroid/graphics/Rect;)V

    goto :goto_0

    :catch_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/da1;->l(Landroid/app/Activity;Landroid/graphics/Rect;)V

    goto :goto_0

    :catch_2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/da1;->l(Landroid/app/Activity;Landroid/graphics/Rect;)V

    goto :goto_0

    :catch_3
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/da1;->l(Landroid/app/Activity;Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    sget-object v4, Landroidx/appcompat/view/menu/gm;->a:Landroidx/appcompat/view/menu/gm;

    const-string v5, "currentDisplay"

    invoke-static {v1, v5}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v3}, Landroidx/appcompat/view/menu/gm;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    sget-object v4, Landroidx/appcompat/view/menu/h1;->a:Landroidx/appcompat/view/menu/h1;

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/h1;->a(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->j(Landroid/content/Context;)I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int v7, v6, v5

    iget v8, v3, Landroid/graphics/Point;->y:I

    if-ne v7, v8, :cond_1

    add-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v7, v6, v5

    iget v8, v3, Landroid/graphics/Point;->x:I

    if-ne v7, v8, :cond_2

    add-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-ne v6, v5, :cond_3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    if-lt v5, v6, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_8

    :cond_4
    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/h1;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/da1;->i(Landroid/view/Display;)Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sget-object v4, Landroidx/appcompat/view/menu/hm;->a:Landroidx/appcompat/view/menu/hm;

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/hm;->b(Landroid/view/DisplayCutout;)I

    move-result v5

    if-ne v1, v5, :cond_5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_5
    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v5

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/hm;->c(Landroid/view/DisplayCutout;)I

    move-result v5

    if-ne v1, v5, :cond_6

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/hm;->c(Landroid/view/DisplayCutout;)I

    move-result v5

    add-int/2addr v1, v5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_6
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/hm;->d(Landroid/view/DisplayCutout;)I

    move-result v5

    if-ne v1, v5, :cond_7

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_7
    iget v1, v3, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/hm;->a(Landroid/view/DisplayCutout;)I

    move-result v2

    if-ne v1, v2, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/hm;->a(Landroid/view/DisplayCutout;)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_8
    return-object v0
.end method

.method public final g(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :try_start_0
    const-class v1, Landroid/content/res/Configuration;

    const-string v2, "windowConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBounds"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.Rect"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->f(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :catch_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->f(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :catch_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->f(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :catch_3
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/da1;->f(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public final h(Landroid/content/Context;)Landroidx/appcompat/view/menu/y81;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/sg;->a:Landroidx/appcompat/view/menu/sg;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/sg;->b(Landroid/content/Context;)Landroidx/appcompat/view/menu/y81;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Incompatible SDK version"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Landroid/view/Display;)Landroid/view/DisplayCutout;
    .locals 7

    :try_start_0
    const-string v0, "android.view.DisplayInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDisplayInfo"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "displayCutout"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/DisplayCutout;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final j(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "navigation_bar_height"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final k(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 2

    const-string v0, "display"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-object v1, Landroidx/appcompat/view/menu/gm;->a:Landroidx/appcompat/view/menu/gm;

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/menu/gm;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public final l(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    return-void
.end method
