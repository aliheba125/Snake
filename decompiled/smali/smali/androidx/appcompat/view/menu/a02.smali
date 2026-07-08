.class public final synthetic Landroidx/appcompat/view/menu/a02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Landroidx/appcompat/view/menu/a02;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/a02;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/a02;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/a02;->a:Landroidx/appcompat/view/menu/a02;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/appcompat/view/menu/y72;

    iget-wide v0, p1, Landroidx/appcompat/view/menu/y72;->n:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
