.class public final enum Landroidx/appcompat/view/menu/fi0$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/fi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/fi0$g;

.field public static final enum o:Landroidx/appcompat/view/menu/fi0$g;

.field public static final enum p:Landroidx/appcompat/view/menu/fi0$g;

.field public static final enum q:Landroidx/appcompat/view/menu/fi0$g;

.field public static final enum r:Landroidx/appcompat/view/menu/fi0$g;

.field public static final synthetic s:[Landroidx/appcompat/view/menu/fi0$g;


# instance fields
.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/fi0$g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "STANDARD"

    invoke-direct {v0, v3, v1, v2}, Landroidx/appcompat/view/menu/fi0$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/fi0$g;->n:Landroidx/appcompat/view/menu/fi0$g;

    new-instance v0, Landroidx/appcompat/view/menu/fi0$g;

    const/4 v1, 0x1

    const-string v2, "HapticFeedbackType.lightImpact"

    const-string v3, "LIGHT_IMPACT"

    invoke-direct {v0, v3, v1, v2}, Landroidx/appcompat/view/menu/fi0$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/fi0$g;->o:Landroidx/appcompat/view/menu/fi0$g;

    new-instance v0, Landroidx/appcompat/view/menu/fi0$g;

    const/4 v1, 0x2

    const-string v2, "HapticFeedbackType.mediumImpact"

    const-string v3, "MEDIUM_IMPACT"

    invoke-direct {v0, v3, v1, v2}, Landroidx/appcompat/view/menu/fi0$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/fi0$g;->p:Landroidx/appcompat/view/menu/fi0$g;

    new-instance v0, Landroidx/appcompat/view/menu/fi0$g;

    const/4 v1, 0x3

    const-string v2, "HapticFeedbackType.heavyImpact"

    const-string v3, "HEAVY_IMPACT"

    invoke-direct {v0, v3, v1, v2}, Landroidx/appcompat/view/menu/fi0$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/fi0$g;->q:Landroidx/appcompat/view/menu/fi0$g;

    new-instance v0, Landroidx/appcompat/view/menu/fi0$g;

    const/4 v1, 0x4

    const-string v2, "HapticFeedbackType.selectionClick"

    const-string v3, "SELECTION_CLICK"

    invoke-direct {v0, v3, v1, v2}, Landroidx/appcompat/view/menu/fi0$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/fi0$g;->r:Landroidx/appcompat/view/menu/fi0$g;

    invoke-static {}, Landroidx/appcompat/view/menu/fi0$g;->c()[Landroidx/appcompat/view/menu/fi0$g;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/fi0$g;->s:[Landroidx/appcompat/view/menu/fi0$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/fi0$g;->m:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c()[Landroidx/appcompat/view/menu/fi0$g;
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/fi0$g;->n:Landroidx/appcompat/view/menu/fi0$g;

    sget-object v1, Landroidx/appcompat/view/menu/fi0$g;->o:Landroidx/appcompat/view/menu/fi0$g;

    sget-object v2, Landroidx/appcompat/view/menu/fi0$g;->p:Landroidx/appcompat/view/menu/fi0$g;

    sget-object v3, Landroidx/appcompat/view/menu/fi0$g;->q:Landroidx/appcompat/view/menu/fi0$g;

    sget-object v4, Landroidx/appcompat/view/menu/fi0$g;->r:Landroidx/appcompat/view/menu/fi0$g;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/appcompat/view/menu/fi0$g;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$g;
    .locals 5

    invoke-static {}, Landroidx/appcompat/view/menu/fi0$g;->values()[Landroidx/appcompat/view/menu/fi0$g;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v4, v3, Landroidx/appcompat/view/menu/fi0$g;->m:Ljava/lang/String;

    if-nez v4, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such HapticFeedbackType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$g;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/fi0$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/fi0$g;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/fi0$g;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/fi0$g;->s:[Landroidx/appcompat/view/menu/fi0$g;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/fi0$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/fi0$g;

    return-object v0
.end method
