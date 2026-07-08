.class public final enum Landroidx/appcompat/view/menu/yv0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/yv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/yv0$a;

.field public static final enum n:Landroidx/appcompat/view/menu/yv0$a;

.field public static final enum o:Landroidx/appcompat/view/menu/yv0$a;

.field public static final enum p:Landroidx/appcompat/view/menu/yv0$a;

.field public static final enum q:Landroidx/appcompat/view/menu/yv0$a;

.field public static final synthetic r:[Landroidx/appcompat/view/menu/yv0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/appcompat/view/menu/yv0$a;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/yv0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/yv0$a;->m:Landroidx/appcompat/view/menu/yv0$a;

    new-instance v1, Landroidx/appcompat/view/menu/yv0$a;

    const-string v2, "CONSTANT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/menu/yv0$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/appcompat/view/menu/yv0$a;->n:Landroidx/appcompat/view/menu/yv0$a;

    new-instance v2, Landroidx/appcompat/view/menu/yv0$a;

    const-string v3, "SLACK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/yv0$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/appcompat/view/menu/yv0$a;->o:Landroidx/appcompat/view/menu/yv0$a;

    new-instance v3, Landroidx/appcompat/view/menu/yv0$a;

    const-string v4, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/yv0$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/appcompat/view/menu/yv0$a;->p:Landroidx/appcompat/view/menu/yv0$a;

    new-instance v4, Landroidx/appcompat/view/menu/yv0$a;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/view/menu/yv0$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/appcompat/view/menu/yv0$a;->q:Landroidx/appcompat/view/menu/yv0$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/appcompat/view/menu/yv0$a;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/yv0$a;->r:[Landroidx/appcompat/view/menu/yv0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/yv0$a;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/yv0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/yv0$a;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/yv0$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/yv0$a;->r:[Landroidx/appcompat/view/menu/yv0$a;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/yv0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/yv0$a;

    return-object v0
.end method
