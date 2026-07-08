.class public final Landroidx/appcompat/view/menu/h5$d;
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
    name = "d"
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/h5$d;

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

    new-instance v0, Landroidx/appcompat/view/menu/h5$d;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/h5$d;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/h5$d;->a:Landroidx/appcompat/view/menu/h5$d;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$d;->b:Landroidx/appcompat/view/menu/ir;

    const-string v0, "eventCode"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$d;->c:Landroidx/appcompat/view/menu/ir;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$d;->d:Landroidx/appcompat/view/menu/ir;

    const-string v0, "sourceExtension"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$d;->e:Landroidx/appcompat/view/menu/ir;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$d;->f:Landroidx/appcompat/view/menu/ir;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$d;->g:Landroidx/appcompat/view/menu/ir;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Landroidx/appcompat/view/menu/ir;->d(Ljava/lang/String;)Landroidx/appcompat/view/menu/ir;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/h5$d;->h:Landroidx/appcompat/view/menu/ir;

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

    check-cast p1, Landroidx/appcompat/view/menu/fa0;

    check-cast p2, Landroidx/appcompat/view/menu/uf0;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/h5$d;->b(Landroidx/appcompat/view/menu/fa0;Landroidx/appcompat/view/menu/uf0;)V

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/fa0;Landroidx/appcompat/view/menu/uf0;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/h5$d;->b:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fa0;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroidx/appcompat/view/menu/uf0;->b(Landroidx/appcompat/view/menu/ir;J)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$d;->c:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fa0;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$d;->d:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fa0;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroidx/appcompat/view/menu/uf0;->b(Landroidx/appcompat/view/menu/ir;J)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$d;->e:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fa0;->f()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$d;->f:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fa0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$d;->g:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fa0;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Landroidx/appcompat/view/menu/uf0;->b(Landroidx/appcompat/view/menu/ir;J)Landroidx/appcompat/view/menu/uf0;

    sget-object v0, Landroidx/appcompat/view/menu/h5$d;->h:Landroidx/appcompat/view/menu/ir;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fa0;->e()Landroidx/appcompat/view/menu/ve0;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroidx/appcompat/view/menu/uf0;->e(Landroidx/appcompat/view/menu/ir;Ljava/lang/Object;)Landroidx/appcompat/view/menu/uf0;

    return-void
.end method
