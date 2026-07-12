.class public final enum Landroidx/appcompat/view/menu/s70$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/s70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/s70$b;

.field public static final enum o:Landroidx/appcompat/view/menu/s70$b;

.field public static final enum p:Landroidx/appcompat/view/menu/s70$b;

.field public static final synthetic q:[Landroidx/appcompat/view/menu/s70$b;


# instance fields
.field public m:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/appcompat/view/menu/s70$b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "kDown"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/appcompat/view/menu/s70$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/appcompat/view/menu/s70$b;->n:Landroidx/appcompat/view/menu/s70$b;

    new-instance v0, Landroidx/appcompat/view/menu/s70$b;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-string v4, "kUp"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/appcompat/view/menu/s70$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/appcompat/view/menu/s70$b;->o:Landroidx/appcompat/view/menu/s70$b;

    new-instance v0, Landroidx/appcompat/view/menu/s70$b;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2

    const-string v4, "kRepeat"

    invoke-direct {v0, v4, v1, v2, v3}, Landroidx/appcompat/view/menu/s70$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Landroidx/appcompat/view/menu/s70$b;->p:Landroidx/appcompat/view/menu/s70$b;

    invoke-static {}, Landroidx/appcompat/view/menu/s70$b;->c()[Landroidx/appcompat/view/menu/s70$b;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/s70$b;->q:[Landroidx/appcompat/view/menu/s70$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Landroidx/appcompat/view/menu/s70$b;->m:J

    return-void
.end method

.method public static synthetic c()[Landroidx/appcompat/view/menu/s70$b;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/s70$b;->n:Landroidx/appcompat/view/menu/s70$b;

    sget-object v1, Landroidx/appcompat/view/menu/s70$b;->o:Landroidx/appcompat/view/menu/s70$b;

    sget-object v2, Landroidx/appcompat/view/menu/s70$b;->p:Landroidx/appcompat/view/menu/s70$b;

    filled-new-array {v0, v1, v2}, [Landroidx/appcompat/view/menu/s70$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/s70$b;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/s70$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/s70$b;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/s70$b;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/s70$b;->q:[Landroidx/appcompat/view/menu/s70$b;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/s70$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/s70$b;

    return-object v0
.end method


# virtual methods
.method public e()J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/s70$b;->m:J

    return-wide v0
.end method
