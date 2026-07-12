.class public Landroidx/appcompat/view/menu/l71;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/l71$c;,
        Landroidx/appcompat/view/menu/l71$b;
    }
.end annotation


# static fields
.field public static e:Landroidx/appcompat/view/menu/l71;

.field public static f:Landroidx/appcompat/view/menu/l71$b;


# instance fields
.field public a:J

.field public b:Lio/flutter/embedding/engine/FlutterJNI;

.field public c:Landroidx/appcompat/view/menu/l71$c;

.field public final d:Lio/flutter/embedding/engine/FlutterJNI$b;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/appcompat/view/menu/l71;->a:J

    new-instance v0, Landroidx/appcompat/view/menu/l71$c;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/view/menu/l71$c;-><init>(Landroidx/appcompat/view/menu/l71;J)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l71;->c:Landroidx/appcompat/view/menu/l71$c;

    new-instance v0, Landroidx/appcompat/view/menu/l71$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l71$a;-><init>(Landroidx/appcompat/view/menu/l71;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l71;->d:Lio/flutter/embedding/engine/FlutterJNI$b;

    iput-object p1, p0, Landroidx/appcompat/view/menu/l71;->b:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/l71;)J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/l71;->a:J

    return-wide v0
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/l71;J)J
    .locals 0

    iput-wide p1, p0, Landroidx/appcompat/view/menu/l71;->a:J

    return-wide p1
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/l71;)Lio/flutter/embedding/engine/FlutterJNI;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/l71;->b:Lio/flutter/embedding/engine/FlutterJNI;

    return-object p0
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/l71;)Landroidx/appcompat/view/menu/l71$c;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/l71;->c:Landroidx/appcompat/view/menu/l71$c;

    return-object p0
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/l71;Landroidx/appcompat/view/menu/l71$c;)Landroidx/appcompat/view/menu/l71$c;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/l71;->c:Landroidx/appcompat/view/menu/l71$c;

    return-object p1
.end method

.method public static f(Landroid/hardware/display/DisplayManager;Lio/flutter/embedding/engine/FlutterJNI;)Landroidx/appcompat/view/menu/l71;
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/l71;->e:Landroidx/appcompat/view/menu/l71;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/l71;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/l71;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    sput-object v0, Landroidx/appcompat/view/menu/l71;->e:Landroidx/appcompat/view/menu/l71;

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/l71;->f:Landroidx/appcompat/view/menu/l71$b;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/l71$b;

    sget-object v1, Landroidx/appcompat/view/menu/l71;->e:Landroidx/appcompat/view/menu/l71;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/l71$b;-><init>(Landroidx/appcompat/view/menu/l71;Landroid/hardware/display/DisplayManager;)V

    sput-object v0, Landroidx/appcompat/view/menu/l71;->f:Landroidx/appcompat/view/menu/l71$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l71$b;->a()V

    :cond_1
    sget-object v0, Landroidx/appcompat/view/menu/l71;->e:Landroidx/appcompat/view/menu/l71;

    iget-wide v0, v0, Landroidx/appcompat/view/menu/l71;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    sget-object v0, Landroidx/appcompat/view/menu/l71;->e:Landroidx/appcompat/view/menu/l71;

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    float-to-double v3, p0

    div-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Landroidx/appcompat/view/menu/l71;->a:J

    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/FlutterJNI;->setRefreshRateFPS(F)V

    :cond_2
    sget-object p0, Landroidx/appcompat/view/menu/l71;->e:Landroidx/appcompat/view/menu/l71;

    return-object p0
.end method


# virtual methods
.method public g()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l71;->b:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l71;->d:Lio/flutter/embedding/engine/FlutterJNI$b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setAsyncWaitForVsyncDelegate(Lio/flutter/embedding/engine/FlutterJNI$b;)V

    return-void
.end method
