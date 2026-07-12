.class public final enum Landroidx/appcompat/view/menu/fi0$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/fi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation


# static fields
.field public static final enum n:Landroidx/appcompat/view/menu/fi0$i;

.field public static final enum o:Landroidx/appcompat/view/menu/fi0$i;

.field public static final synthetic p:[Landroidx/appcompat/view/menu/fi0$i;


# instance fields
.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/fi0$i;

    const/4 v1, 0x0

    const-string v2, "SystemSoundType.click"

    const-string v3, "CLICK"

    invoke-direct {v0, v3, v1, v2}, Landroidx/appcompat/view/menu/fi0$i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/fi0$i;->n:Landroidx/appcompat/view/menu/fi0$i;

    new-instance v0, Landroidx/appcompat/view/menu/fi0$i;

    const/4 v1, 0x1

    const-string v2, "SystemSoundType.alert"

    const-string v3, "ALERT"

    invoke-direct {v0, v3, v1, v2}, Landroidx/appcompat/view/menu/fi0$i;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/fi0$i;->o:Landroidx/appcompat/view/menu/fi0$i;

    invoke-static {}, Landroidx/appcompat/view/menu/fi0$i;->c()[Landroidx/appcompat/view/menu/fi0$i;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/fi0$i;->p:[Landroidx/appcompat/view/menu/fi0$i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/fi0$i;->m:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c()[Landroidx/appcompat/view/menu/fi0$i;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/fi0$i;->n:Landroidx/appcompat/view/menu/fi0$i;

    sget-object v1, Landroidx/appcompat/view/menu/fi0$i;->o:Landroidx/appcompat/view/menu/fi0$i;

    filled-new-array {v0, v1}, [Landroidx/appcompat/view/menu/fi0$i;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$i;
    .locals 5

    invoke-static {}, Landroidx/appcompat/view/menu/fi0$i;->values()[Landroidx/appcompat/view/menu/fi0$i;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Landroidx/appcompat/view/menu/fi0$i;->m:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such SoundType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/fi0$i;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/fi0$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/fi0$i;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/fi0$i;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/fi0$i;->p:[Landroidx/appcompat/view/menu/fi0$i;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/fi0$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/fi0$i;

    return-object v0
.end method
