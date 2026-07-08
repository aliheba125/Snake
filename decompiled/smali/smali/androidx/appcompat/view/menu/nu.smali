.class public Landroidx/appcompat/view/menu/nu;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/be0$c;
.implements Landroidx/appcompat/view/menu/a80$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/nu$f;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/fu;

.field public b:Landroidx/appcompat/view/menu/hu;

.field public c:Landroidx/appcompat/view/menu/ot;

.field public d:Landroidx/appcompat/view/menu/vo0;

.field public e:Landroidx/appcompat/view/menu/vo0;

.field public final f:Ljava/util/Set;

.field public g:Z

.field public h:Lio/flutter/embedding/engine/a;

.field public final i:Ljava/util/Set;

.field public j:Landroidx/appcompat/view/menu/be0;

.field public k:Lio/flutter/plugin/editing/c;

.field public l:Landroidx/appcompat/view/menu/kw0;

.field public m:Landroidx/appcompat/view/menu/t90;

.field public n:Landroidx/appcompat/view/menu/a80;

.field public o:Landroidx/appcompat/view/menu/h2;

.field public p:Lio/flutter/view/a;

.field public q:Landroid/view/textservice/TextServicesManager;

.field public r:Landroidx/appcompat/view/menu/f81;

.field public final s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

.field public final t:Lio/flutter/view/a$k;

.field public final u:Landroid/database/ContentObserver;

.field public final v:Landroidx/appcompat/view/menu/iu;

.field public final w:Landroidx/appcompat/view/menu/pf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/appcompat/view/menu/fu;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->f:Ljava/util/Set;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->i:Ljava/util/Set;

    .line 6
    new-instance p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-direct {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    .line 7
    new-instance p1, Landroidx/appcompat/view/menu/nu$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/nu$a;-><init>(Landroidx/appcompat/view/menu/nu;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->t:Lio/flutter/view/a$k;

    .line 8
    new-instance p1, Landroidx/appcompat/view/menu/nu$b;

    new-instance p2, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/view/menu/nu$b;-><init>(Landroidx/appcompat/view/menu/nu;Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->u:Landroid/database/ContentObserver;

    .line 10
    new-instance p1, Landroidx/appcompat/view/menu/nu$c;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/nu$c;-><init>(Landroidx/appcompat/view/menu/nu;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->v:Landroidx/appcompat/view/menu/iu;

    .line 11
    new-instance p1, Landroidx/appcompat/view/menu/nu$d;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/nu$d;-><init>(Landroidx/appcompat/view/menu/nu;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->w:Landroidx/appcompat/view/menu/pf;

    iput-object p3, p0, Landroidx/appcompat/view/menu/nu;->a:Landroidx/appcompat/view/menu/fu;

    iput-object p3, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->u()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/appcompat/view/menu/hu;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->f:Ljava/util/Set;

    .line 15
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->i:Ljava/util/Set;

    .line 16
    new-instance p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-direct {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    .line 17
    new-instance p1, Landroidx/appcompat/view/menu/nu$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/nu$a;-><init>(Landroidx/appcompat/view/menu/nu;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->t:Lio/flutter/view/a$k;

    .line 18
    new-instance p1, Landroidx/appcompat/view/menu/nu$b;

    new-instance p2, Landroid/os/Handler;

    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/view/menu/nu$b;-><init>(Landroidx/appcompat/view/menu/nu;Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->u:Landroid/database/ContentObserver;

    .line 20
    new-instance p1, Landroidx/appcompat/view/menu/nu$c;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/nu$c;-><init>(Landroidx/appcompat/view/menu/nu;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->v:Landroidx/appcompat/view/menu/iu;

    .line 21
    new-instance p1, Landroidx/appcompat/view/menu/nu$d;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/nu$d;-><init>(Landroidx/appcompat/view/menu/nu;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->w:Landroidx/appcompat/view/menu/pf;

    iput-object p3, p0, Landroidx/appcompat/view/menu/nu;->b:Landroidx/appcompat/view/menu/hu;

    iput-object p3, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->u()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/fu;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/nu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/appcompat/view/menu/fu;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/hu;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/nu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/appcompat/view/menu/hu;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/textservice/SpellCheckerInfo;)Z
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/nu;->w(Landroid/view/textservice/SpellCheckerInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/nu;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/nu;->z(ZZ)V

    return-void
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/nu;)Lio/flutter/embedding/engine/a;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    return-object p0
.end method

.method public static synthetic g(Landroidx/appcompat/view/menu/nu;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/nu;->g:Z

    return p1
.end method

.method public static synthetic h(Landroidx/appcompat/view/menu/nu;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/nu;->f:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic i(Landroidx/appcompat/view/menu/nu;)Landroidx/appcompat/view/menu/ot;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    return-object p0
.end method

.method public static synthetic j(Landroidx/appcompat/view/menu/nu;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->x()V

    return-void
.end method

.method public static synthetic w(Landroid/view/textservice/SpellCheckerInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.inputmethod.latin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    const-string v1, "FlutterView"

    if-nez v0, :cond_0

    const-string p1, "Tried to revert the image view, but no image view is used."

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->e:Landroidx/appcompat/view/menu/vo0;

    if-nez v0, :cond_1

    const-string p1, "Tried to revert the image view, but no previous surface was used."

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->e:Landroidx/appcompat/view/menu/vo0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/vo0;->b()V

    new-instance v1, Landroidx/appcompat/view/menu/nu$e;

    invoke-direct {v1, p0, v0, p1}, Landroidx/appcompat/view/menu/nu$e;-><init>(Landroidx/appcompat/view/menu/nu;Lio/flutter/embedding/engine/renderer/FlutterRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->g(Landroidx/appcompat/view/menu/iu;)V

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ot;->a()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->x()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public B()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/qt0$c;->o:Landroidx/appcompat/view/menu/qt0$c;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/qt0$c;->n:Landroidx/appcompat/view/menu/qt0$c;

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->q:Landroid/view/textservice/TextServicesManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_1

    invoke-static {v1}, Landroidx/appcompat/view/menu/ku;->a(Landroid/view/textservice/TextServicesManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Landroidx/appcompat/view/menu/mu;

    invoke-direct {v4}, Landroidx/appcompat/view/menu/mu;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    iget-object v4, p0, Landroidx/appcompat/view/menu/nu;->q:Landroid/view/textservice/TextServicesManager;

    invoke-static {v4}, Landroidx/appcompat/view/menu/lu;->a(Landroid/view/textservice/TextServicesManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v4, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v4}, Lio/flutter/embedding/engine/a;->u()Landroidx/appcompat/view/menu/qt0;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/qt0;->d()Landroidx/appcompat/view/menu/qt0$b;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/qt0$b;->f(F)Landroidx/appcompat/view/menu/qt0$b;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/qt0$b;->c(Landroid/util/DisplayMetrics;)Landroidx/appcompat/view/menu/qt0$b;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/qt0$b;->d(Z)Landroidx/appcompat/view/menu/qt0$b;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_password"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/qt0$b;->b(Z)Landroidx/appcompat/view/menu/qt0$b;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/qt0$b;->g(Z)Landroidx/appcompat/view/menu/qt0$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/qt0$b;->e(Landroidx/appcompat/view/menu/qt0$c;)Landroidx/appcompat/view/menu/qt0$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/qt0$b;->a()V

    return-void
.end method

.method public final C()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FlutterView"

    const-string v1, "Tried to send viewport metrics from Android to Flutter but this FlutterView was not attached to a FlutterEngine."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->a:F

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->p:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->o(Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;)V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->k:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/c;->j(Landroid/util/SparseArray;)V

    return-void
.end method

.method public b(I)Landroid/view/PointerIcon;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->k:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/c;->p(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/bj0;->y(Landroid/view/View;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->n:Landroidx/appcompat/view/menu/a80;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/a80;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->p:Lio/flutter/view/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/view/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->p:Lio/flutter/view/a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttachedFlutterEngine()Lio/flutter/embedding/engine/a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    return-object v0
.end method

.method public getBinaryMessenger()Landroidx/appcompat/view/menu/i8;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Landroidx/appcompat/view/menu/si;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentImageSurface()Landroidx/appcompat/view/menu/ot;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ot;->e()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l(Landroidx/appcompat/view/menu/iu;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m(Landroidx/appcompat/view/menu/ot;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ot;->c(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    :cond_0
    return-void
.end method

.method public n(Lio/flutter/embedding/engine/a;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching to a FlutterEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    if-ne p1, v0, :cond_0

    const-string p1, "Already attached to this engine. Doing nothing."

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Currently attached to a different engine. Detaching and then attaching to new engine."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->s()V

    :cond_1
    iput-object p1, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->i()Z

    move-result v2

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/nu;->g:Z

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    invoke-interface {v2, v0}, Landroidx/appcompat/view/menu/vo0;->c(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->v:Landroidx/appcompat/view/menu/iu;

    invoke-virtual {v0, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->g(Landroidx/appcompat/view/menu/iu;)V

    new-instance v0, Landroidx/appcompat/view/menu/be0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->n()Landroidx/appcompat/view/menu/ae0;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/view/menu/be0;-><init>(Landroidx/appcompat/view/menu/be0$c;Landroidx/appcompat/view/menu/ae0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->j:Landroidx/appcompat/view/menu/be0;

    new-instance v0, Lio/flutter/plugin/editing/c;

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->x()Landroidx/appcompat/view/menu/xz0;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v3}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/editing/c;-><init>(Landroid/view/View;Landroidx/appcompat/view/menu/xz0;Landroidx/appcompat/view/menu/bj0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->k:Lio/flutter/plugin/editing/c;

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "textservices"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->q:Landroid/view/textservice/TextServicesManager;

    new-instance v2, Landroidx/appcompat/view/menu/kw0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v3}, Lio/flutter/embedding/engine/a;->v()Landroidx/appcompat/view/menu/jw0;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroidx/appcompat/view/menu/kw0;-><init>(Landroid/view/textservice/TextServicesManager;Landroidx/appcompat/view/menu/jw0;)V

    iput-object v2, p0, Landroidx/appcompat/view/menu/nu;->l:Landroidx/appcompat/view/menu/kw0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "TextServicesManager not supported by device, spell check disabled."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->m()Landroidx/appcompat/view/menu/t90;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->m:Landroidx/appcompat/view/menu/t90;

    new-instance v0, Landroidx/appcompat/view/menu/a80;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/a80;-><init>(Landroidx/appcompat/view/menu/a80$e;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->n:Landroidx/appcompat/view/menu/a80;

    new-instance v0, Landroidx/appcompat/view/menu/h2;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/h2;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->o:Landroidx/appcompat/view/menu/h2;

    new-instance v0, Lio/flutter/view/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->h()Landroidx/appcompat/view/menu/z;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lio/flutter/view/a;-><init>(Landroid/view/View;Landroidx/appcompat/view/menu/z;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Landroidx/appcompat/view/menu/wi0;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->p:Lio/flutter/view/a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->t:Lio/flutter/view/a$k;

    invoke-virtual {v0, v1}, Lio/flutter/view/a;->X(Lio/flutter/view/a$k;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->p:Lio/flutter/view/a;

    invoke-virtual {v0}, Lio/flutter/view/a;->z()Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->p:Lio/flutter/view/a;

    invoke-virtual {v1}, Lio/flutter/view/a;->B()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/nu;->z(ZZ)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->p:Lio/flutter/view/a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bj0;->a(Lio/flutter/view/a;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bj0;->w(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->k:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/c;->o()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->B()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->u:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->C()V

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/bj0;->x(Landroidx/appcompat/view/menu/nu;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/nu;->i:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean p1, p0, Landroidx/appcompat/view/menu/nu;->g:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/nu;->v:Landroidx/appcompat/view/menu/iu;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/iu;->f()V

    :cond_2
    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final o()Landroidx/appcompat/view/menu/nu$f;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/nu$f;->o:Landroidx/appcompat/view/menu/nu$f;

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Landroidx/appcompat/view/menu/nu$f;->n:Landroidx/appcompat/view/menu/nu$f;

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    sget-object v0, Landroidx/appcompat/view/menu/nu$f;->p:Landroidx/appcompat/view/menu/nu$f;

    return-object v0

    :cond_3
    sget-object v0, Landroidx/appcompat/view/menu/nu$f;->m:Landroidx/appcompat/view/menu/nu$f;

    return-object v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/i91;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v2}, Landroidx/appcompat/view/menu/e50;->a(Landroid/graphics/Insets;)I

    move-result v4

    iput v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->l:I

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v2}, Landroidx/appcompat/view/menu/f50;->a(Landroid/graphics/Insets;)I

    move-result v4

    iput v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->m:I

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v2}, Landroidx/appcompat/view/menu/g50;->a(Landroid/graphics/Insets;)I

    move-result v4

    iput v4, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->n:I

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v2}, Landroidx/appcompat/view/menu/d50;->a(Landroid/graphics/Insets;)I

    move-result v2

    iput v2, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->o:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    const/16 v5, 0x1e

    if-lt v1, v5, :cond_5

    if-eqz v3, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/p91;->a()I

    move-result v4

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/appcompat/view/menu/o91;->a()I

    move-result v1

    or-int/2addr v4, v1

    :cond_4
    invoke-static {p1, v4}, Landroidx/appcompat/view/menu/n91;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/e50;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->d:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/f50;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->e:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/g50;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->f:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/d50;->a(Landroid/graphics/Insets;)I

    move-result v1

    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->g:I

    invoke-static {}, Landroidx/appcompat/view/menu/wv0;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/n91;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/e50;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->h:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/f50;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->i:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/g50;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->j:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/d50;->a(Landroid/graphics/Insets;)I

    move-result v1

    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->k:I

    invoke-static {}, Landroidx/appcompat/view/menu/r91;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/n91;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/e50;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->l:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/f50;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->m:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/g50;->a(Landroid/graphics/Insets;)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->n:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    invoke-static {v1}, Landroidx/appcompat/view/menu/d50;->a(Landroid/graphics/Insets;)I

    move-result v1

    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->o:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-static {p1}, Landroidx/appcompat/view/menu/ju;->a(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->d:I

    invoke-static {v1}, Landroidx/appcompat/view/menu/e50;->a(Landroid/graphics/Insets;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->d:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->e:I

    invoke-static {v1}, Landroidx/appcompat/view/menu/f50;->a(Landroid/graphics/Insets;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->e:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->f:I

    invoke-static {v1}, Landroidx/appcompat/view/menu/g50;->a(Landroid/graphics/Insets;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->f:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->g:I

    invoke-static {v1}, Landroidx/appcompat/view/menu/d50;->a(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->g:I

    goto :goto_8

    :cond_5
    sget-object v1, Landroidx/appcompat/view/menu/nu$f;->m:Landroidx/appcompat/view/menu/nu$f;

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->o()Landroidx/appcompat/view/menu/nu$f;

    move-result-object v1

    :cond_6
    iget-object v5, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    goto :goto_2

    :cond_7
    move v2, v4

    :goto_2
    iput v2, v5, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->d:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    sget-object v5, Landroidx/appcompat/view/menu/nu$f;->o:Landroidx/appcompat/view/menu/nu$f;

    if-eq v1, v5, :cond_9

    sget-object v5, Landroidx/appcompat/view/menu/nu$f;->p:Landroidx/appcompat/view/menu/nu$f;

    if-ne v1, v5, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    goto :goto_4

    :cond_9
    :goto_3
    move v5, v4

    :goto_4
    iput v5, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->e:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    if-eqz v3, :cond_a

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/nu;->t(Landroid/view/WindowInsets;)I

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    goto :goto_5

    :cond_a
    move v3, v4

    :goto_5
    iput v3, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->f:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    sget-object v3, Landroidx/appcompat/view/menu/nu$f;->n:Landroidx/appcompat/view/menu/nu$f;

    if-eq v1, v3, :cond_c

    sget-object v3, Landroidx/appcompat/view/menu/nu$f;->p:Landroidx/appcompat/view/menu/nu$f;

    if-ne v1, v3, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    goto :goto_7

    :cond_c
    :goto_6
    move v1, v4

    :goto_7
    iput v1, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->g:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iput v4, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->h:I

    iput v4, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->i:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/nu;->t(Landroid/view/WindowInsets;)I

    move-result p1

    iput p1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->j:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iput v4, p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->k:I

    :cond_d
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating window insets (onApplyWindowInsets()):\nStatus bar insets: Top: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Left: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v2, v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->g:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Right: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->e:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nKeyboard insets: Bottom: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v3, v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->j:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->k:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->i:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "System Gesture Insets - Left: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->o:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Top: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->l:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->m:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Bottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget v1, v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->j:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FlutterView"

    invoke-static {v1, p1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->C()V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->r()Landroidx/appcompat/view/menu/f81;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->r:Landroidx/appcompat/view/menu/f81;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/o61;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->r:Landroidx/appcompat/view/menu/f81;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/lg;->h(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->w:Landroidx/appcompat/view/menu/pf;

    invoke-virtual {v1, v0, v2, v3}, Landroidx/appcompat/view/menu/f81;->a(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/pf;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    const-string v0, "FlutterView"

    const-string v1, "Configuration changed. Sending locales and user settings to Flutter."

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->m:Landroidx/appcompat/view/menu/t90;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/t90;->d(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->B()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/o61;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/o61$a;)V

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->k:Lio/flutter/plugin/editing/c;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->n:Landroidx/appcompat/view/menu/a80;

    invoke-virtual {v0, p0, v1, p1}, Lio/flutter/plugin/editing/c;->m(Landroid/view/View;Landroidx/appcompat/view/menu/a80;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->r:Landroidx/appcompat/view/menu/f81;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->w:Landroidx/appcompat/view/menu/pf;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/f81;->b(Landroidx/appcompat/view/menu/pf;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->r:Landroidx/appcompat/view/menu/f81;

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->o:Landroidx/appcompat/view/menu/h2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/h2;->i(Landroid/view/MotionEvent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->p:Lio/flutter/view/a;

    invoke-virtual {v0, p1}, Lio/flutter/view/a;->I(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->k:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/c;->x(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size changed. Sending Flutter new viewport metrics. FlutterView was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " x "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", it is now "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "FlutterView"

    invoke-static {p4, p3}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iput p1, p3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->b:I

    iput p2, p3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->c:I

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->C()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->o:Landroidx/appcompat/view/menu/h2;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h2;->j(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/vo0;->d()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->q()Landroidx/appcompat/view/menu/ot;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ot;->k(II)V

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->e:Landroidx/appcompat/view/menu/vo0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/vo0;->c(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    :cond_1
    return-void
.end method

.method public q()Landroidx/appcompat/view/menu/ot;
    .locals 5

    new-instance v0, Landroidx/appcompat/view/menu/ot;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroidx/appcompat/view/menu/ot$b;->m:Landroidx/appcompat/view/menu/ot$b;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/ot;-><init>(Landroid/content/Context;IILandroidx/appcompat/view/menu/ot$b;)V

    return-object v0
.end method

.method public r()Landroidx/appcompat/view/menu/f81;
    .locals 4

    :try_start_0
    new-instance v0, Landroidx/appcompat/view/menu/f81;

    new-instance v1, Landroidx/appcompat/view/menu/h81;

    sget-object v2, Landroidx/appcompat/view/menu/g81;->a:Landroidx/appcompat/view/menu/g81$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/g81$a;->d(Landroid/content/Context;)Landroidx/appcompat/view/menu/g81;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/h81;-><init>(Landroidx/appcompat/view/menu/g81;)V

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/f81;-><init>(Landroidx/appcompat/view/menu/h81;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detaching from a FlutterEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FlutterView not attached to an engine. Not detaching."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->u:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bj0;->F()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Landroidx/appcompat/view/menu/bj0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bj0;->d()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->p:Lio/flutter/view/a;

    invoke-virtual {v0}, Lio/flutter/view/a;->P()V

    iput-object v2, p0, Landroidx/appcompat/view/menu/nu;->p:Lio/flutter/view/a;

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->k:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/c;->o()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->k:Lio/flutter/plugin/editing/c;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/c;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->n:Landroidx/appcompat/view/menu/a80;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a80;->d()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->l:Landroidx/appcompat/view/menu/kw0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/kw0;->b()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->j:Landroidx/appcompat/view/menu/be0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/be0;->c()V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/nu;->g:Z

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->v:Landroidx/appcompat/view/menu/iu;

    invoke-virtual {v0, v3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->l(Landroidx/appcompat/view/menu/iu;)V

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->q()V

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->n(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->e:Landroidx/appcompat/view/menu/vo0;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    iget-object v3, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    if-ne v1, v3, :cond_3

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/vo0;->a()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->x()V

    iput-object v2, p0, Landroidx/appcompat/view/menu/nu;->e:Landroidx/appcompat/view/menu/vo0;

    iput-object v2, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    return-void

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    throw v2
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    instance-of v1, v0, Landroidx/appcompat/view/menu/fu;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/fu;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setWindowInfoListenerDisplayFeatures(Landroidx/appcompat/view/menu/y91;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/y91;->a()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "FlutterView"

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/jm;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowInfoTracker Display Feature reported with bounds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/jm;->a()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, v1, Landroidx/appcompat/view/menu/pu;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/pu;

    invoke-interface {v2}, Landroidx/appcompat/view/menu/pu;->b()Landroidx/appcompat/view/menu/pu$a;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/pu$a;->d:Landroidx/appcompat/view/menu/pu$a;

    if-ne v3, v4, :cond_0

    sget-object v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->p:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    goto :goto_1

    :cond_0
    sget-object v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->o:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    :goto_1
    invoke-interface {v2}, Landroidx/appcompat/view/menu/pu;->getState()Landroidx/appcompat/view/menu/pu$b;

    move-result-object v4

    sget-object v5, Landroidx/appcompat/view/menu/pu$b;->c:Landroidx/appcompat/view/menu/pu$b;

    if-ne v4, v5, :cond_1

    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;->o:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Landroidx/appcompat/view/menu/pu;->getState()Landroidx/appcompat/view/menu/pu$b;

    move-result-object v2

    sget-object v4, Landroidx/appcompat/view/menu/pu$b;->d:Landroidx/appcompat/view/menu/pu$b;

    if-ne v2, v4, :cond_2

    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;->p:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;

    goto :goto_2

    :cond_2
    sget-object v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;->n:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;

    :goto_2
    new-instance v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/jm;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v4, v1, v3, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/jm;->a()Landroid/graphics/Rect;

    move-result-object v1

    sget-object v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->n:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    sget-object v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;->n:Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;

    invoke-direct {v2, v1, v3, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;Lio/flutter/embedding/engine/renderer/FlutterRenderer$d;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisplayCutout area reported with bounds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;

    sget-object v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;->q:Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;

    invoke-direct {v3, v1, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$c;-><init>(Landroid/graphics/Rect;Lio/flutter/embedding/engine/renderer/FlutterRenderer$e;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object p1, p0, Landroidx/appcompat/view/menu/nu;->s:Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iput-object v0, p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;->q:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/nu;->C()V

    return-void
.end method

.method public final t(Landroid/view/WindowInsets;)I
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    const-wide v5, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v3, v5

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    return p1
.end method

.method public final u()V
    .locals 2

    const-string v0, "Initializing FlutterView"

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->a:Landroidx/appcompat/view/menu/fu;

    if-eqz v0, :cond_0

    const-string v0, "Internally using a FlutterSurfaceView."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->a:Landroidx/appcompat/view/menu/fu;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->b:Landroidx/appcompat/view/menu/hu;

    if-eqz v0, :cond_1

    const-string v0, "Internally using a FlutterTextureView."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->b:Landroidx/appcompat/view/menu/hu;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "Internally using a FlutterImageView."

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/ea0;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAutofill(I)V

    return-void
.end method

.method public v()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/nu;->d:Landroidx/appcompat/view/menu/vo0;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/vo0;->getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ot;->g()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/nu;->c:Landroidx/appcompat/view/menu/ot;

    :cond_0
    return-void
.end method

.method public y(Landroidx/appcompat/view/menu/iu;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final z(ZZ)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/nu;->h:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->s()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    :goto_0
    return-void
.end method
