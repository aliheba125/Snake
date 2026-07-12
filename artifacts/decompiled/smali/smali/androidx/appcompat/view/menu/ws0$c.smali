.class public final enum Landroidx/appcompat/view/menu/ws0$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ws0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/ws0$c;

.field public static final enum n:Landroidx/appcompat/view/menu/ws0$c;

.field public static final enum o:Landroidx/appcompat/view/menu/ws0$c;

.field public static final enum p:Landroidx/appcompat/view/menu/ws0$c;

.field public static final synthetic q:[Landroidx/appcompat/view/menu/ws0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/appcompat/view/menu/ws0$c;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/ws0$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/ws0$c;->m:Landroidx/appcompat/view/menu/ws0$c;

    new-instance v1, Landroidx/appcompat/view/menu/ws0$c;

    const-string v2, "QUEUING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/menu/ws0$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/appcompat/view/menu/ws0$c;->n:Landroidx/appcompat/view/menu/ws0$c;

    new-instance v2, Landroidx/appcompat/view/menu/ws0$c;

    const-string v3, "QUEUED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/ws0$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/appcompat/view/menu/ws0$c;->o:Landroidx/appcompat/view/menu/ws0$c;

    new-instance v3, Landroidx/appcompat/view/menu/ws0$c;

    const-string v4, "RUNNING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/ws0$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/appcompat/view/menu/ws0$c;->p:Landroidx/appcompat/view/menu/ws0$c;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/appcompat/view/menu/ws0$c;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/ws0$c;->q:[Landroidx/appcompat/view/menu/ws0$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/ws0$c;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/ws0$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/ws0$c;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/ws0$c;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ws0$c;->q:[Landroidx/appcompat/view/menu/ws0$c;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/ws0$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/ws0$c;

    return-object v0
.end method
