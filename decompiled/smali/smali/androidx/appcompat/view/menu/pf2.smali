.class public Landroidx/appcompat/view/menu/pf2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Landroidx/appcompat/view/menu/pf2;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/pf2;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/pf2;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v6, Landroidx/appcompat/view/menu/pf2;->e:Landroidx/appcompat/view/menu/pf2;

    return-void
.end method

.method public constructor <init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/pf2;->a:Z

    iput p2, p0, Landroidx/appcompat/view/menu/pf2;->d:I

    iput-object p4, p0, Landroidx/appcompat/view/menu/pf2;->b:Ljava/lang/String;

    iput-object p5, p0, Landroidx/appcompat/view/menu/pf2;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(ZIILjava/lang/String;Ljava/lang/Throwable;Landroidx/appcompat/view/menu/kf2;)V
    .locals 0

    .line 2
    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x5

    const/4 p5, 0x0

    const/4 p6, 0x0

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Landroidx/appcompat/view/menu/pf2;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b()Landroidx/appcompat/view/menu/pf2;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/pf2;->e:Landroidx/appcompat/view/menu/pf2;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Landroidx/appcompat/view/menu/pf2;
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/pf2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/pf2;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/appcompat/view/menu/pf2;
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/pf2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    move-object v0, v6

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/pf2;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public static f(I)Landroidx/appcompat/view/menu/pf2;
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/pf2;

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/pf2;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public static g(IILjava/lang/String;Ljava/lang/Throwable;)Landroidx/appcompat/view/menu/pf2;
    .locals 7

    new-instance v6, Landroidx/appcompat/view/menu/pf2;

    const/4 v1, 0x0

    move-object v0, v6

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/pf2;-><init>(ZIILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pf2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/pf2;->a:Z

    if-nez v0, :cond_1

    const-string v0, "GoogleCertificatesRslt"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pf2;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pf2;->a()Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pf2;->a()Ljava/lang/String;

    :cond_1
    return-void
.end method
