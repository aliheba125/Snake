.class public final enum Landroidx/appcompat/view/menu/kr;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/kr;

.field public static final enum o:Landroidx/appcompat/view/menu/kr;

.field public static final enum p:Landroidx/appcompat/view/menu/kr;

.field public static final enum q:Landroidx/appcompat/view/menu/kr;

.field public static final enum r:Landroidx/appcompat/view/menu/kr;

.field public static final synthetic s:[Landroidx/appcompat/view/menu/kr;


# instance fields
.field public final m:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/appcompat/view/menu/kr;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "DEX_FILES"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/appcompat/view/menu/kr;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/appcompat/view/menu/kr;->n:Landroidx/appcompat/view/menu/kr;

    new-instance v0, Landroidx/appcompat/view/menu/kr;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-string v4, "EXTRA_DESCRIPTORS"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/appcompat/view/menu/kr;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/appcompat/view/menu/kr;->o:Landroidx/appcompat/view/menu/kr;

    new-instance v0, Landroidx/appcompat/view/menu/kr;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2

    const-string v4, "CLASSES"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/appcompat/view/menu/kr;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/appcompat/view/menu/kr;->p:Landroidx/appcompat/view/menu/kr;

    new-instance v0, Landroidx/appcompat/view/menu/kr;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3

    const-string v4, "METHODS"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/appcompat/view/menu/kr;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/appcompat/view/menu/kr;->q:Landroidx/appcompat/view/menu/kr;

    new-instance v0, Landroidx/appcompat/view/menu/kr;

    const/4 v1, 0x4

    const-wide/16 v2, 0x4

    const-string v4, "AGGREGATION_COUNT"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/appcompat/view/menu/kr;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/appcompat/view/menu/kr;->r:Landroidx/appcompat/view/menu/kr;

    invoke-static {}, Landroidx/appcompat/view/menu/kr;->c()[Landroidx/appcompat/view/menu/kr;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/kr;->s:[Landroidx/appcompat/view/menu/kr;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Landroidx/appcompat/view/menu/kr;->m:J

    return-void
.end method

.method public static synthetic c()[Landroidx/appcompat/view/menu/kr;
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/kr;->n:Landroidx/appcompat/view/menu/kr;

    sget-object v1, Landroidx/appcompat/view/menu/kr;->o:Landroidx/appcompat/view/menu/kr;

    sget-object v2, Landroidx/appcompat/view/menu/kr;->p:Landroidx/appcompat/view/menu/kr;

    sget-object v3, Landroidx/appcompat/view/menu/kr;->q:Landroidx/appcompat/view/menu/kr;

    sget-object v4, Landroidx/appcompat/view/menu/kr;->r:Landroidx/appcompat/view/menu/kr;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/appcompat/view/menu/kr;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/kr;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/kr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/kr;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/kr;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/kr;->s:[Landroidx/appcompat/view/menu/kr;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/kr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/kr;

    return-object v0
.end method


# virtual methods
.method public e()J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/kr;->m:J

    return-wide v0
.end method
