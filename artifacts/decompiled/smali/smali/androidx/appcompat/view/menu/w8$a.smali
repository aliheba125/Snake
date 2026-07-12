.class public final synthetic Landroidx/appcompat/view/menu/w8$a;
.super Landroidx/appcompat/view/menu/fx;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/tw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/w8;->y()Landroidx/appcompat/view/menu/n70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final v:Landroidx/appcompat/view/menu/w8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/w8$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/w8$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/w8$a;->v:Landroidx/appcompat/view/menu/w8$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x2

    const-class v2, Landroidx/appcompat/view/menu/w8;

    const-string v3, "createSegment"

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/fx;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Landroidx/appcompat/view/menu/db;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/appcompat/view/menu/w8$a;->k(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object p1

    return-object p1
.end method

.method public final k(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;
    .locals 0

    invoke-static {p1, p2, p3}, Landroidx/appcompat/view/menu/w8;->c(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object p1

    return-object p1
.end method
