.class public final Landroidx/appcompat/view/menu/el1;
.super Landroidx/appcompat/view/menu/yk1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/view/menu/yk1;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/cl1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/el1;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method
