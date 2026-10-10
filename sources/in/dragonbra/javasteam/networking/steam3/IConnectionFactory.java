package in.dragonbra.javasteam.networking.steam3;

import in.dragonbra.javasteam.steam.steamclient.configuration.SteamConfiguration;
import java.util.EnumSet;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
@FunctionalInterface
public interface IConnectionFactory {
    public static final IConnectionFactory DEFAULT = new IConnectionFactory() { // from class: in.dragonbra.javasteam.networking.steam3.IConnectionFactory$$ExternalSyntheticLambda1
        @Override // in.dragonbra.javasteam.networking.steam3.IConnectionFactory
        public final Connection createConnection(SteamConfiguration steamConfiguration, EnumSet enumSet) {
            return IConnectionFactory.lambda$static$0(steamConfiguration, enumSet);
        }
    };

    Connection createConnection(SteamConfiguration steamConfiguration, EnumSet<ProtocolTypes> enumSet);

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ Connection lambda$static$0(SteamConfiguration steamConfiguration, EnumSet enumSet) {
        if (enumSet.contains(ProtocolTypes.WEB_SOCKET)) {
            return new WebSocketConnection();
        }
        if (enumSet.contains(ProtocolTypes.TCP)) {
            return new EnvelopeEncryptedConnection(new TcpConnection(), steamConfiguration.getUniverse());
        }
        if (enumSet.contains(ProtocolTypes.UDP)) {
            return new EnvelopeEncryptedConnection(new UdpConnection(), steamConfiguration.getUniverse());
        }
        return null;
    }

    default IConnectionFactory thenResolve(final IConnectionFactory iConnectionFactory) {
        Objects.requireNonNull(iConnectionFactory);
        return new IConnectionFactory() { // from class: in.dragonbra.javasteam.networking.steam3.IConnectionFactory$$ExternalSyntheticLambda0
            @Override // in.dragonbra.javasteam.networking.steam3.IConnectionFactory
            public final Connection createConnection(SteamConfiguration steamConfiguration, EnumSet enumSet) {
                return this.f$0.lambda$thenResolve$1(iConnectionFactory, steamConfiguration, enumSet);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default Connection lambda$thenResolve$1(IConnectionFactory iConnectionFactory, SteamConfiguration steamConfiguration, EnumSet enumSet) {
        Connection connectionCreateConnection = createConnection(steamConfiguration, enumSet);
        return connectionCreateConnection == null ? iConnectionFactory.createConnection(steamConfiguration, enumSet) : connectionCreateConnection;
    }
}
