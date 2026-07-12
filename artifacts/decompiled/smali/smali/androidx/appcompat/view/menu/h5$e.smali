.class public final Landroidx/appcompat/view/menu/h5$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tf0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/h5$e;

.field public static final b:Landroidx/appcompat/view/menu/ir;

.field public static final c:Landroidx/appcompat/view/menu/ir;

.field public static final d:Landroidx/appcompat/view/menu/ir;

.field public static final e:Landroidx/appcompat/view/menu/ir;

.field public static final f:Landroidx/appcompat/view/menu/ir;

.field public static final g:Landroidx/appcompat/view/menu/ir;

.field public static final h:Landroidx/appcompat/view/menu/ir;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/h5$e;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/h5$e;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/h5$e;->a:Landroidx/appcompat/view/menu/h5$e;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$e;->b:Landroidx/appcompat/view/menu/ir;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$e;->c:Landroidx/appcompat/view/menu/ir;

    const-string v0, "clientInfo"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$e;->d:Landroidx/appcompat/view/menu/ir;

    const-string v0, "logSource"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$e;->e:Landroidx/appcompat/view/menu/ir;

    const-string v0, "logSourceName"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$e;->f:Landroidx/appcompat/view/menu/ir;

    const-string v0, "logEvent"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$e;->g:Landroidx/appcompat/view/menu/ir;

    const-string v0, "qosTier"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$e;->h:Landroidx/appcompat/view/menu/ir;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/ha0;

    check-cast p2, Landroidx/appcompat/view/menu/uf0;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/h5$e;->b(Landroidx/appcompat/view/menu/ha0;Landroidx/appcompat/view/menu/uf0;)V

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/ha0;Landroidx/appcompat/view/menu/uf0;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/h5$e;->b:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ha0;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroidx/appcompat/view/menu/uf0;->b(Landroidx/appcompat/view/menu/ir;J)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$e;->c:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ha0;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroidx/appcompat/view/menu/uf0;->b(Landroidx/appcompat/view/menu/ir;J)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$e;->d:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ha0;->b()Landroidx/appcompat/view/menu/yb;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$e;->e:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ha0;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$e;->f:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ha0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$e;->g:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ha0;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$e;->h:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ha0;->f()Landroidx/appcompat/view/menu/tl0;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    return-void
.end method
