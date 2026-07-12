.class public Landroidx/appcompat/view/menu/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/z$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/f8;

.field public final b:Lio/flutter/embedding/engine/FlutterJNI;

.field public c:Landroidx/appcompat/view/menu/z$b;

.field public final d:Landroidx/appcompat/view/menu/f8$d;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/si;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/z$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/z$a;-><init>(Landroidx/appcompat/view/menu/z;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/z;->d:Landroidx/appcompat/view/menu/f8$d;

    new-instance v1, Landroidx/appcompat/view/menu/f8;

    const-string v2, "flutter/accessibility"

    sget-object v3, Landroidx/appcompat/view/menu/pw0;->a:Landroidx/appcompat/view/menu/pw0;

    invoke-direct {v1, p1, v2, v3}, Landroidx/appcompat/view/menu/f8;-><init>(Landroidx/appcompat/view/menu/i8;Ljava/lang/String;Landroidx/appcompat/view/menu/xc0;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/z;->a:Landroidx/appcompat/view/menu/f8;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/f8;->e(Landroidx/appcompat/view/menu/f8$d;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/z;->b:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/z;)Landroidx/appcompat/view/menu/z$b;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/z;->c:Landroidx/appcompat/view/menu/z$b;

    return-object p0
.end method


# virtual methods
.method public b(ILio/flutter/view/a$g;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/a$g;)V

    return-void
.end method

.method public c(ILio/flutter/view/a$g;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/a$g;Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/z;->b:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/z;->b:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityFeatures(I)V

    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/z$b;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/z;->c:Landroidx/appcompat/view/menu/z$b;

    iget-object v0, p0, Landroidx/appcompat/view/menu/z;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityDelegate(Lio/flutter/embedding/engine/FlutterJNI$a;)V

    return-void
.end method
