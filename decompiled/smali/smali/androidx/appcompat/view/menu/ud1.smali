.class public final Landroidx/appcompat/view/menu/ud1;
.super Landroidx/appcompat/view/menu/wx;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/nz0;


# static fields
.field public static final k:Landroidx/appcompat/view/menu/m2$g;

.field public static final l:Landroidx/appcompat/view/menu/m2$a;

.field public static final m:Landroidx/appcompat/view/menu/m2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/m2$g;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/m2$g;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ud1;->k:Landroidx/appcompat/view/menu/m2$g;

    new-instance v1, Landroidx/appcompat/view/menu/sd1;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/sd1;-><init>()V

    sput-object v1, Landroidx/appcompat/view/menu/ud1;->l:Landroidx/appcompat/view/menu/m2$a;

    new-instance v2, Landroidx/appcompat/view/menu/m2;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Landroidx/appcompat/view/menu/m2;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/m2$a;Landroidx/appcompat/view/menu/m2$g;)V

    sput-object v2, Landroidx/appcompat/view/menu/ud1;->m:Landroidx/appcompat/view/menu/m2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/oz0;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/ud1;->m:Landroidx/appcompat/view/menu/m2;

    sget-object v1, Landroidx/appcompat/view/menu/wx$a;->c:Landroidx/appcompat/view/menu/wx$a;

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/appcompat/view/menu/wx;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/m2;Landroidx/appcompat/view/menu/m2$d;Landroidx/appcompat/view/menu/wx$a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/lz0;)Landroidx/appcompat/view/menu/zy0;
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/az0;->a()Landroidx/appcompat/view/menu/az0$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/appcompat/view/menu/hr;

    sget-object v2, Landroidx/appcompat/view/menu/qc1;->a:Landroidx/appcompat/view/menu/hr;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/az0$a;->d([Landroidx/appcompat/view/menu/hr;)Landroidx/appcompat/view/menu/az0$a;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/az0$a;->c(Z)Landroidx/appcompat/view/menu/az0$a;

    new-instance v1, Landroidx/appcompat/view/menu/pd1;

    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/pd1;-><init>(Landroidx/appcompat/view/menu/lz0;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/az0$a;->b(Landroidx/appcompat/view/menu/no0;)Landroidx/appcompat/view/menu/az0$a;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/az0$a;->a()Landroidx/appcompat/view/menu/az0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/wx;->c(Landroidx/appcompat/view/menu/az0;)Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    return-object p1
.end method
