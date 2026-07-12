.class public abstract enum Landroidx/appcompat/view/menu/ya0$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/pw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ya0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation


# static fields
.field public static final enum m:Landroidx/appcompat/view/menu/ya0$a;

.field public static final enum n:Landroidx/appcompat/view/menu/ya0$a;

.field public static final synthetic o:[Landroidx/appcompat/view/menu/ya0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/ya0$a$a;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/ya0$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/ya0$a;->m:Landroidx/appcompat/view/menu/ya0$a;

    new-instance v0, Landroidx/appcompat/view/menu/ya0$a$b;

    const-string v1, "VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/ya0$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/appcompat/view/menu/ya0$a;->n:Landroidx/appcompat/view/menu/ya0$a;

    invoke-static {}, Landroidx/appcompat/view/menu/ya0$a;->c()[Landroidx/appcompat/view/menu/ya0$a;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/ya0$a;->o:[Landroidx/appcompat/view/menu/ya0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroidx/appcompat/view/menu/xa0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/ya0$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Landroidx/appcompat/view/menu/ya0$a;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/appcompat/view/menu/ya0$a;

    const/4 v1, 0x0

    sget-object v2, Landroidx/appcompat/view/menu/ya0$a;->m:Landroidx/appcompat/view/menu/ya0$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/appcompat/view/menu/ya0$a;->n:Landroidx/appcompat/view/menu/ya0$a;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/appcompat/view/menu/ya0$a;
    .locals 1

    const-class v0, Landroidx/appcompat/view/menu/ya0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/ya0$a;

    return-object p0
.end method

.method public static values()[Landroidx/appcompat/view/menu/ya0$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ya0$a;->o:[Landroidx/appcompat/view/menu/ya0$a;

    invoke-virtual {v0}, [Landroidx/appcompat/view/menu/ya0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/ya0$a;

    return-object v0
.end method
